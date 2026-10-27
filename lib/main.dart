import 'dart:async';
import 'dart:ui';

import 'package:findora/core/error/errorWidget/custom_error_widget.dart';
import 'package:findora/core/language/locale_provider.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/network/network.dart';
import 'package:findora/core/theme/theme_colors.dart';
import 'package:findora/core/theme/theme_provider.dart';
import 'package:findora/featured/login/presentation/provider/auth_provider.dart';
import 'package:findora/utilities/dep/git_it.dart';
import 'package:findora/utilities/routing/router_config.dart';
import 'package:findora/utilities/uiHelper/app_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart' as fl;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> bootstrap(FirebaseOptions options) async {
  runZonedGuarded(
    () async {
      final binding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: binding);

      ConnectivityService.instance.initialize();
      setPathUrlStrategy();
      await Firebase.initializeApp(options: options);
      await GitIt.initGitIt();

      FlutterError.onError = (FlutterErrorDetails details) {
        reportError(details.exception, details.stack, context: 'FlutterError');
        FlutterError.presentError(details);
      };

      ErrorWidget.builder = (FlutterErrorDetails details) {
        return CustomErrorWidget(errorDetails: details);
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        reportError(error, stack, context: 'PlatformDispatcher');
        return true;
      };

      runApp(
        ProviderScope(
          overrides: [
            settingsBoxProvider.overrideWithValue(GitIt.settingsBox!),
            hiveManagerProvider.overrideWithValue(GitIt.hiveManager!),
          ],
          child: const EntryPoint(),
        ),
      );
      // الـ splash بيتشال من EntryPoint لما الـ auth يجهز
    },
    (error, stack) {
      reportError(error, stack, context: 'runZonedGuarded');
    },
  );
}

class EntryPoint extends ConsumerStatefulWidget {
  const EntryPoint({super.key});

  @override
  ConsumerState<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends ConsumerState<EntryPoint> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(themeProvider.notifier).getCurrentTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = ref.watch(themeProvider);
    final locale = ref.watch(localeProvider);
    final router = ref.watch(routerProvider);

    // شيل الـ splash أول ما حالة الدخول تتحدد
    ref.listen(authStateProvider, (_, next) {
      if (!next.isLoading) FlutterNativeSplash.remove();
    });

    final bool isDark = themeState.theme == ThemeMode.dark;
    final currentTheme = AppThemes.createTheme(isArabic: false, isDark: isDark)
        .copyWith(
          extensions: <ThemeExtension<dynamic>>[
            AppColors.resolve(isDark: isDark),
          ],
        );

    return ResponsiveBreakpoints.builder(
      breakpoints: [
        const Breakpoint(start: 0, end: 599, name: MOBILE),
        const Breakpoint(start: 600, end: 1439, name: TABLET),
        const Breakpoint(start: 1440, end: double.infinity, name: DESKTOP),
      ],
      child: MaterialApp.router(
        locale: locale,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: [
          AppLocalizations.delegate,
          fl.GlobalMaterialLocalizations.delegate,
          fl.GlobalWidgetsLocalizations.delegate,
          fl.GlobalCupertinoLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.noScaling, boldText: false),
            child: child!,
          );
        },
        scrollBehavior: MyCustomScrollBehavior(),
        routerConfig: router,
        theme: currentTheme,
        themeAnimationCurve: Curves.easeInOut,
        themeAnimationDuration: const Duration(milliseconds: 300),
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}

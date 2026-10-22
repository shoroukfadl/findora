import 'package:findora/featured/blockedUsers/presentation/pages/blocked_users_page.dart';
import 'package:findora/featured/boarding/presentation/pages/boarding_screen.dart';
import 'package:findora/featured/chat/presentation/pages/chat_page.dart';
import 'package:findora/featured/chats/presentation/pages/chats_page.dart';
import 'package:findora/featured/createReport/presentation/pages/create_report.dart';
import 'package:findora/featured/home/presentation/pages/home_page.dart';
import 'package:findora/featured/login/presentation/pages/login_page.dart';
import 'package:findora/featured/notifications/presentation/pages/notification_screen.dart';
import 'package:findora/featured/privacy/presentation/pages/privacy_policy_page.dart';
import 'package:findora/featured/profile/presentation/pages/profile_page.dart';
import 'package:findora/featured/register/presentation/pages/register_page.dart';
import 'package:findora/featured/reportDetails/presentation/pages/report_details_page.dart';
import 'package:findora/featured/reports/presentation/pages/reports_page.dart';
import 'package:findora/featured/saved/presentation/pages/saved_page.dart';
import 'package:findora/featured/settings/presentation/cubit/settings_cubit.dart';
import 'package:findora/featured/settings/presentation/pages/settings_page.dart';
import 'package:findora/shared/mainLayout/main_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/constants/global_keys.dart';
import 'package:findora/utilities/dep/git_it.dart';
import 'package:findora/utilities/routing/routing_stream.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

BuildContext? get CURRENT_CONTEXT =>
    GoRouterConfig.router.routerDelegate.navigatorKey.currentContext;

class GoRouterConfig {
  static GoRouter get router => _router;
  static final GoRouter _router = GoRouter(
    navigatorKey: GlobalKeys.rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(
      sl<FirebaseAuth>().authStateChanges(),
    ),
    redirect: (context, state) {
      // final isLoggedIn = FirebaseAuth.instance.currentUser != null;
      // final location = state.matchedLocation;
      // final isAuthPage = location == "/${SendCodeScreen.routeName}" ||
      //     location == "/${BoardingScreen.routeName}" ||
      //     location == "/${CodeScreen.routeName}";
      //
      // if (isLoggedIn && isAuthPage) return '/${HomeScreen.routeName}';
      //
      // return null;
    },
    routes: <RouteBase>[
      // Chat Page
      GoRoute(
          name: ChatPage.routeName,
          path: "/" + ChatPage.routeName,
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: ChatPage(
                userName: state.uri.queryParameters['userName'] ?? '',
                userInitials: state.uri.queryParameters['userInitials'] ?? '',
                itemDescription:
                    state.uri.queryParameters['itemDescription'] ?? '',
                status: state.uri.queryParameters['status'] ?? '',
              ),
            );
          },
          routes: []),

      // Report Details Page
      GoRoute(
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          name: ReportDetailsPage.routeName,
          path: "/" + ReportDetailsPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const ReportDetailsPage(),
            );
          },
          routes: []),
      // Notification Page
      GoRoute(
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          name: NotificationPage.routeName,
          path: "/" + NotificationPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const NotificationPage(),
            );
          },
          routes: []),

      // Reports Page
      GoRoute(
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          name: ReportsPage.routeName,
          path: "/" + ReportsPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const ReportsPage(),
            );
          },
          routes: []),

      // Settings Page
      GoRoute(
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          name: SettingsPage.routeName,
          path: "/" + SettingsPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: BlocProvider<SettingsCubit>(
                  create: (_) => sl<SettingsCubit>(),
                  child: const SettingsPage()),
            );
          },
          routes: []),
      GoRoute(
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          name: BlockedUsersPage.routeName,
          path: "/" + BlockedUsersPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const BlockedUsersPage(),
            );
          },
          routes: []),
      GoRoute(
          name: CreateReport.routeName,
          path: "/${CreateReport.routeName}",
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const CreateReport(),
            );
          },
          routes: []),
      GoRoute(
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          name: PrivacyPolicyPage.routeName,
          path: "/" + PrivacyPolicyPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const PrivacyPolicyPage(),
            );
          },
          routes: []),

      GoRoute(
          parentNavigatorKey: GlobalKeys.rootNavigatorKey,
          name: SavedPage.routeName,
          path: "/" + SavedPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const SavedPage(),
            );
          },
          routes: []),

      // Boarding Page
      GoRoute(
        name: BoardingPage.routeName,
        path: BoardingPage.routeName,
        pageBuilder: (_, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: const BoardingPage(),
          );
        },
      ),

      // Register Page
      GoRoute(
        path: "/${RegisterPage.routeName}",
        name: RegisterPage.routeName,
        pageBuilder: (_, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: const RegisterPage(),
          );
        },
      ),

      // Login Page
      GoRoute(
          path: "/${LoginPage.routeName}",
          name: LoginPage.routeName,
          pageBuilder: (_, GoRouterState state) {
            return getCustomTransitionPage(
              state: state,
              child: const LoginPage(),
            );
          },
          routes: [
            // GoRoute(
            //     path: CodeScreen.routeName,
            //     name: CodeScreen.routeName,
            //     pageBuilder: (_, GoRouterState state) {
            //       return getCustomTransitionPage(
            //           state: state,
            //           child: BlocProvider<VerifyCodeCubit>(
            //             create: (c) => sl<VerifyCodeCubit>(),
            //             child: CodeScreen(
            //               phone: state.uri.queryParameters['phone'] ?? "",
            //               verificationId:
            //                   state.uri.queryParameters['verificationId'] ?? "",
            //             ),
            //           ));
            //     },
            //     routes: [
            //       // GoRoute(
            //       //   path: ProfileSetupScreen.routeName,
            //       //   name: ProfileSetupScreen.routeName,
            //       //   pageBuilder: (_, GoRouterState state) {
            //       //     return getCustomTransitionPage(
            //       //       state: state,
            //       //       child: const ProfileSetupScreen(),
            //       //     );
            //       //   },
            //       // ),
            //     ]),
          ]),
      ShellRoute(
          builder: (context, state, child) {
            return MainLayoutWidget(
              currentPath: state.fullPath,
              child: child,
            );
          },
          routes: [
            GoRoute(
                name: HomePage.routeName,
                path: "/${HomePage.routeName}",
                pageBuilder: (_, GoRouterState state) {
                  return getCustomTransitionPage(
                    state: state,
                    child: const HomePage(),
                  );
                },
                routes: []),
            GoRoute(
                name: ChatsPage.routeName,
                path: "/${ChatsPage.routeName}",
                pageBuilder: (_, GoRouterState state) {
                  return getCustomTransitionPage(
                    state: state,
                    child: const ChatsPage(),
                  );
                },
                routes: []),
            GoRoute(
                name: ProfilePage.routeName,
                path: "/${ProfilePage.routeName}",
                pageBuilder: (_, GoRouterState state) {
                  return getCustomTransitionPage(
                    state: state,
                    child: const ProfilePage(),
                  );
                },
                routes: []),
          ]),
    ],
  );

  static CustomTransitionPage getCustomTransitionPage(
      {required GoRouterState state, required Widget child}) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 0),
      reverseTransitionDuration: Duration.zero,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  }
}

List<String> preventedRoutes = [
  ScreenRoutes.chat.name,
  ScreenRoutes.aiSummary.name,
  ScreenRoutes.profileChat.name,
];

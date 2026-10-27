import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/theme/theme_provider.dart';
import 'package:findora/shared/customWidgets/option_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeBottomSheet extends ConsumerWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    final t = context.t;
    final currentTheme = ref.watch(themeProvider).theme;

    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t.settingsTheme, style: AppTextStyles.b14(color: colors.text1)),
        for (final e in ThemeMode.values)
          OptionWidget(
            selected: currentTheme == e,
            title: t.tr(e.name),
            onTap: () => ref.read(themeProvider.notifier).changeTheme(e),
          ),
        Text(
          'The app switches theme immediately.',
          style: AppTextStyles.b12(color: colors.text2),
        ),
      ],
    );
  }
}

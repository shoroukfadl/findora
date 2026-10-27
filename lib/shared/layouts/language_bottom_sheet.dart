import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locale_provider.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/option_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageBottomSheet extends ConsumerWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    final t = context.t;
    final locale = ref.watch(localeProvider);
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t.settingsLanguage, style: AppTextStyles.b14(color: colors.text1)),
        ...AppLanguage.values
            .map(
              (e) => OptionWidget(
                selected: locale.languageCode == e.name,
                title: e == AppLanguage.en ? 'English' : 'العربية',
                description: e == AppLanguage.en
                    ? 'Left to right'
                    : 'Right to left',
                onTap: () =>
                    ref.read(localeProvider.notifier).setLocale(e.name),
              ),
            )
            .toList(),
        Text(
          'The app switches language and layout direction immediately.',
          style: AppTextStyles.b12(color: colors.text2),
        ),
      ],
    );
  }
}

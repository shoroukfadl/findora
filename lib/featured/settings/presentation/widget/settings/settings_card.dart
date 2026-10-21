import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/settings/presentation/widget/settings/settings_item.dart';
import 'package:findora/shared/bottomSheet/language_bottom_sheet.dart';
import 'package:findora/shared/bottomSheet/theme_bottom_sheet.dart';
import 'package:findora/shared/customWidgets/segmented_button.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/helper/helper_function.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final tr = context.t;
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingsItem<String>.Arrow(
          item: SegmentOption(
            value: 'language',
            label: tr.settingsLanguage,
          ),
          onTap: (_) {
            HelperFunctions.showCustomBottomSheet(
                context, LanguageBottomSheet());
          },
        ),
        SettingsItem<String>.Arrow(
          item: SegmentOption(
            value: 'theme',
            label: tr.settingsTheme,
          ),
          onTap: (_) {
            HelperFunctions.showCustomBottomSheet(
                context, ThemeBottomSheet());
          },
        ),
        SettingsItem<String>.Arrow(
          item: SegmentOption(
            value: 'blocked',
            label: tr.settingsBlockedUsers,
          ),
          onTap: (_) {},
        ),
        SettingsItem<String>.Arrow(
          item: SegmentOption(
            value: 'security',
            label: tr.settingsPrivacyPolicy,
          ),
          onTap: (_) {},
        ),
      ],
    );
  }
}

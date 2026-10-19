import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/settings/presentation/widget/settings/actions_widget.dart';
import 'package:findora/featured/settings/presentation/widget/settings/settings_card.dart';
import 'package:findora/shared/customWidgets/custom_button_widget.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static String routeName = ScreenRoutes.settings.name;
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    return ScreenLayoutWidget(children: [
      SecondaryAppBar(title: t.profileSettings).asPaddedSliver(),
      ScreenSpacer(),
      Text(
        t.settingsNotifications,
        style: AppTextStyles.sT14(color: context.colors.text3),
      ).asPaddedSliver(),
      CustomSpacer.M().asSliver(),
      ActionsCard().asSliver(),
      ScreenSpacer(),
      Text(
        t.settingsGeneral,
        style: AppTextStyles.sT14(color: context.colors.text3),
      ).asPaddedSliver(),
      CustomSpacer.M().asSliver(),
      SettingsCard().asSliver(),
      ScreenSpacer(),
      ScreenSpacer(),
      CustomButtonWidget(
        btnColor: context.colors.danger,
        child: Text(
          t.settingsDeleteAccount,
          style: AppTextStyles.sT14(color: Colors.white),
        ),
      ).asPaddedSliver()
    ]);
  }
}

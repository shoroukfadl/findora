import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/privacy/presentation/widget/privacy_card.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  static String routeName = ScreenRoutes.privacyPolicy.name;

  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;

    return ScreenLayoutWidget(children: [
      SecondaryAppBar(title: t.settingsPrivacyPolicy).asPaddedSliver(),
      ScreenSpacer(),
      PrivacySection(
        title: 'What we collect',
        items: [
          'Account details (name, email, phone)',
          'Report content and descriptions',
          'Photos you upload',
          'Location data for reports',
          'Chat messages',
        ],
      ).asPaddedSliver(),
      ScreenSpacer(),
      PrivacySection(
        title: 'How contact details are protected',
        items: [
          'Email and phone are never public',
          'Chat opens only after claim approval',
          'Your contact info stays private until you choose to share',
        ],
      ).asPaddedSliver(),
      ScreenSpacer(),
      PrivacySection(
        title: 'Your controls',
        items: [
          'Edit or delete your reports anytime',
          'Block users from contacting you',
          'Delete your account and all data',
        ],
      ).asPaddedSliver(),
      ScreenSpacer(),
      PrivacySection(
        title: 'Contact us',
        items: [
          'support@findora.app',
          'Last updated: October 2024',
        ],
      ).asPaddedSliver(),
      ScreenSpacer(),
    ]);
  }
}

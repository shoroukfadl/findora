import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/boarding/presentation/widget/logo_widget.dart';
import 'package:findora/featured/login/presentation/pages/login_page.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoardingScreen extends StatelessWidget {
  static String routeName = '/';
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final tr = context.t;
    return Scaffold(
        body: SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: mobileHozPadding, vertical: 40),
      child: ScreenLayoutWidget(
        children: [
          const LogoWidget().asSliver(),
          const ScreenSpacer(),
          Text(
            tr.appName,
            style: AppTextStyles.h26(color: colors.text1),
          ).asPaddedSliver(),
          const ScreenSpacer(),
          Text(
            context.t.onboardingSlide1Body,
            style: AppTextStyles.b16(color: colors.text3),
          ).asSliver(),
          const ScreenSpacer(),
          PrimaryButtonWidget(
              title: tr.authLogIn,
              onTap: () {
                context.goNamed(LoginPage.routeName);
              }).asPaddedSliver()
        ],
      ),
    ));
  }
}

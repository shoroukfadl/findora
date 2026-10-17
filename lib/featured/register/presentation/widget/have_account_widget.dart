import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/login/presentation/pages/login_page.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final strings = context.t;
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          strings.authHaveAccount,
          style: AppTextStyles.sT14(color: colors.text2),
        ),
        InkWell(
          onTap: () {
            context.goNamed(LoginPage.routeName);
          },
          child: Text(
            strings.authLogIn,
            style: AppTextStyles.sT14(color: colors.accent).copyWith(
              decoration: TextDecoration.underline,
              decorationThickness: 1.6,
              decorationColor: colors.accent,
            ),
          ),
        ),
      ],
    );
  }
}

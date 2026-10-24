import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/forgotPassword/presentation/pages/forgot_password_page.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordLinkWidget extends StatelessWidget {
  const ForgotPasswordLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          context.pushNamed(ForgotPasswordPage.routeName);
        },
        child: Text(
          context.t.authForgotPassword,
          style: AppTextStyles.sT14(color: colors.accent).copyWith(
              decoration: TextDecoration.underline,
              decorationThickness: 1.6,
              decorationColor: colors.accent),
        ),
      ),
    );
  }
}

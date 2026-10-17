import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/register/presentation/pages/register_page.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateAccountLinkWidget extends StatelessWidget {
  const CreateAccountLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          t.authNewHere,
          style: AppTextStyles.b14(color: colors.text2),
        ),
        GestureDetector(
          onTap: () {
            context.goNamed(RegisterPage.routeName);
          },
          child: Text(
            t.authCreateAccount,
            style: AppTextStyles.sT14(color: colors.accent).copyWith(
                decoration: TextDecoration.underline,
                decorationThickness: 1.6,
                decorationColor: colors.accent),
          ),
        ),
      ],
    );
  }
}

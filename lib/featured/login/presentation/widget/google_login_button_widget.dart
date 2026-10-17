import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/custom_button_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';

class GoogleLoginButtonWidget extends StatelessWidget {
  const GoogleLoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return CustomButtonWidget(
      onPressed: () {
        // Handle Google login
      },
      btnColor: colors.card,
      borderColor: colors.border,
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Findora.google,
            size: 20,
            color: colors.text1,
          ),
          Text(
            context.t.authContinueWithGoogle,
            style: AppTextStyles.sT16(color: colors.text1),
          ),
        ],
      ),
    );
  }
}

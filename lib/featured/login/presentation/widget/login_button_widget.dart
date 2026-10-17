import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Handle login
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.accent,
          foregroundColor: colors.onAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(fieldsRadius),
          ),
          elevation: 0,
        ),
        child: Text(
          'Log in',
          style: AppTextStyles.sT16(color: colors.onAccent),
        ),
      ),
    );
  }
}

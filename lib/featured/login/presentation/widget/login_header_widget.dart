import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/boarding/presentation/widget/logo_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final tr = context.t;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: mobileHozPadding, vertical: mobileVetPadding),
      decoration: BoxDecoration(
        color: colors.accent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(cardRadius),
          bottomRight: Radius.circular(cardRadius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LogoWidget(
            size: 40,
          ),
          const SizedBox(height: 16),
          Text(
            tr.appName,
            style: AppTextStyles.h26(color: colors.onAccent),
          ),
          const SizedBox(height: 8),
          Text(
            tr.authHeadline1,
            style: AppTextStyles.b14(color: colors.onAccent),
          ),
          const SizedBox(height: 4),
          Text(
            tr.authHeadline2,
            style: AppTextStyles.b14(color: colors.onAccent),
          ),
        ],
      ),
    );
  }
}

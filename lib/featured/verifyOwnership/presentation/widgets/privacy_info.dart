import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class PrivacyInfo extends StatelessWidget {
  const PrivacyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colors.secondarySoft,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        child: Text(
          t.claimPrivacyInfo,
          style: AppTextStyles.sT14(color: colors.text2),
        ));
  }
}

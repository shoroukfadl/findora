import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class DetailsWarningCardWidget extends StatelessWidget {
  const DetailsWarningCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
          bottom: mobileVetPadding / 2,
          right: mobileHozPadding,
          left: mobileHozPadding),
      decoration: BoxDecoration(
        color: colors.secondarySoft,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: Text(
        context.t.detailsPrivacyNote,
        style: AppTextStyles.b12(color: colors.text2),
      ),
    );
  }
}

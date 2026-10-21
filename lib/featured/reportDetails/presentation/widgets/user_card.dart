import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class UserCardWidget extends StatelessWidget {
  final String title;
  final bool verified;

  const UserCardWidget({
    super.key,
    required this.title,
    this.verified = false,
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
        color: colors.card,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: Row(
        children: [
          RoundedImage(
            width: 48,
            height: 48,
            radiusValue: fieldsRadius,
            backgroundColor: colors.surface,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.t14(color: colors.text1),
                ),
                if (verified)
                  Text(
                    context.t.detailsVerifiedEmail,
                    style: AppTextStyles.b12(color: colors.text3),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

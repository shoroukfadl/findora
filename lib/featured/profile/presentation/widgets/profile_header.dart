import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String displayName;
  final String email;
  final bool isVerified;

  const ProfileHeaderWidget({
    super.key,
    required this.displayName,
    required this.email,
    this.isVerified = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return Column(
      children: [
        const SizedBox(height: mobileVetPadding),
        Center(
            child: RoundedImage(
          width: 100,
          height: 100,
          borderColor: colors.border,
          backgroundColor: colors.border,
        )),
        const SizedBox(height: 16),
        Text(
          displayName,
          style: AppTextStyles.h24(color: colors.text1),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              email,
              style: AppTextStyles.b14(color: colors.text2),
            ),
            if (isVerified) ...[
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: colors.accent.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(pillsRadius),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.verified,
                      size: 12,
                      color: colors.accent,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      t.profileVerified,
                      style: AppTextStyles.sT12(color: colors.accent),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

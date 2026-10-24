import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReviewItemHeader extends StatelessWidget {
  final String title;
  final bool isLost;
  final String? imageUrl;

  const ReviewItemHeader({
    super.key,
    required this.title,
    required this.isLost,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Photo placeholder
          RoundedImage(
            width: 64,
            height: 64,
            imagePath: imageUrl,
            backgroundColor: colors.border,
            radiusValue: cardRadius,
          ),
          const SizedBox(width: 16),
          // Title and status
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.t16(color: colors.text1),
                ).expand,
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isLost
                        ? colors.secondarySoft
                        : colors.success.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(pillsRadius),
                  ),
                  child: Text(
                    isLost ? t.commonLost : t.commonFound,
                    style: AppTextStyles.sT12(
                        color: isLost ? colors.secondary : colors.success),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

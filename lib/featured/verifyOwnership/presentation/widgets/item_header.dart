import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ItemHeader extends StatelessWidget {
  final String title;
  final bool isLost;
  final String? imageUrl;

  const ItemHeader({
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
        border: Border.all(color: colors.border),
      ),
      child: Row(
        children: [
          // Photo placeholder
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: imageUrl != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      imageUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.image_outlined,
                          color: colors.text3,
                          size: 32,
                        );
                      },
                    ),
                  )
                : Icon(
                    Icons.image_outlined,
                    color: colors.text3,
                    size: 32,
                  ),
          ),
          const SizedBox(width: 16),
          // Title and status
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.t16(color: colors.text1),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isLost ? colors.danger : colors.success,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    isLost ? t.commonLost : t.commonFound,
                    style: AppTextStyles.sT12(color: colors.onAccent),
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

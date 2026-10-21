import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/Language/app_styles.dart';

class PrivacySection extends StatelessWidget {
  final String title;
  final List<String> items;

  const PrivacySection({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.t14(color: colors.text1),
          ),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.only(left: 8, top: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• ',
                      style: AppTextStyles.b12(color: colors.text2),
                    ),
                    Expanded(
                      child: Text(
                        item,
                        style: AppTextStyles.b12(color: colors.text2),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

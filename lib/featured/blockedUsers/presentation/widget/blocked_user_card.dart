import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/Language/app_styles.dart';

class BlockedUserCard extends StatelessWidget {
  const BlockedUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: mobileHozPadding),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: colors.surface,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "MK",
                style: AppTextStyles.t14(color: colors.text1),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mk SERTTT",
                  style: AppTextStyles.sT14(color: colors.text1),
                ),
                Text(
                  'Blocked on 28 Oct 2023',
                  style: AppTextStyles.b12(color: colors.text2),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // Implement unblock logic
            },
            child: Text(
              'Unblock',
              style: AppTextStyles.sT12(color: colors.danger),
            ),
          ),
        ],
      ),
    );
  }
}

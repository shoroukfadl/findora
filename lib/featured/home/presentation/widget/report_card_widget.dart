import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReportCardWidget extends StatelessWidget {
  final String title;
  final String status;
  final String location;
  final String date;
  final String distance;

  const ReportCardWidget({
    super.key,
    required this.title,
    required this.status,
    required this.location,
    required this.date,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final isLost = status == 'Lost';
    final statusColor = isLost ? colors.lostText : colors.foundText;
    final statusBg = isLost ? colors.lostBg : colors.foundBg;

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
            width: 100,
            height: 100,
            radiusValue: fieldsRadius,
            backgroundColor: colors.surface,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: statusBg,
                        borderRadius: BorderRadius.circular(pillsRadius),
                      ),
                      child: Text(
                        status,
                        style: AppTextStyles.sT12(color: statusColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: AppTextStyles.t16(color: colors.text1),
                ),
                const SizedBox(height: 4),
                Text(
                  '$location · $date',
                  style: AppTextStyles.b12(color: colors.text2),
                ),
                const SizedBox(height: 4),
                Text(
                  distance,
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

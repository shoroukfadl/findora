import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final bool isLast;
  const NotificationCard({super.key, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: mobileHozPadding),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: Row(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoundedImage(
            imagePath: '',
            width: 48,
            height: 48,
            backgroundColor: colors.secondarySoft,
          ),
          Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter devs Egypt",
                style: AppTextStyles.sT12(color: colors.text1),
              ),
              Text(
                'Just Want tp leave',
                style: AppTextStyles.sT10(color: colors.text2),
              ),
              Text(
                '2 days ago',
                style: AppTextStyles.sT10(color: colors.text2),
              ),
            ],
          ).expand,
          if (isLast)
            CircleAvatar(
              radius: 6,
              backgroundColor: colors.danger,
            ),
        ],
      ),
    );
  }
}

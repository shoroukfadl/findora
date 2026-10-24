import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class UserFounderData extends StatelessWidget {
  const UserFounderData({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Row(
      spacing: 16,
      children: [
        RoundedImage(
          width: 48,
          height: 48,
        ),
        Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SKN KEE',
              style: AppTextStyles.sT14(color: colors.text1),
            ),
            Text(
              'Verified email · sent 10 min ago',
              style: AppTextStyles.b12(color: colors.text2),
            ),
          ],
        ).expand
      ],
    );
  }
}

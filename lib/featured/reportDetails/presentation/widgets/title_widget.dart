import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Black Bag",
          style: AppTextStyles.h20(color: colors.text1),
        ),
        const CustomSpacer.xS(),
        Text(
          'Last Seen San Francisco · within 5 km , oct 15,6:30 PM',
          style: AppTextStyles.b12(color: colors.text2),
        ),
      ],
    );
  }
}

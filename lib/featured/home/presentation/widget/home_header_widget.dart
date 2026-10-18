import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mobileHozPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: mobileVetPadding),
          Text(
            t.homeNearbyReports,
            style: AppTextStyles.h26(color: colors.text1),
          ),
          const CustomSpacer.xS(),
          Text(
            'San Francisco · within 5 km',
            style: AppTextStyles.b14(color: colors.text2),
          ),
        ],
      ),
    );
  }
}

import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class OfflineToastWidget extends StatelessWidget {
  const OfflineToastWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 16),
        margin: EdgeInsetsGeometry.symmetric(horizontal: mobileHozPadding),
        decoration: BoxDecoration(
          color: colors.text1,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        child: Row(
          children: [
            Text(
              t.statesOffline,
              style: AppTextStyles.t14(color: colors.background),
            ).expand,
            CustomSpacer.S(),
            GestureDetector(
                onTap: () {},
                child: Text(
                  t.commonRetry,
                  style: AppTextStyles.t12(color: colors.danger),
                ))
          ],
        ));
  }
}

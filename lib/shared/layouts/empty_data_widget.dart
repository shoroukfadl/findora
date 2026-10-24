import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class EmptyDataWidget extends StatelessWidget {
  final String title, description, btnTitle;
  final IconData icon;
  final Function() onTap;
  const EmptyDataWidget({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.btnTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 16),
        margin: EdgeInsetsGeometry.symmetric(horizontal: mobileHozPadding),
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: colors.border,
              radius: 22,
              child: Icon(
                icon,
                size: 20,
                color: colors.accent,
              ),
            ),
            CustomSpacer.L(),
            Text(
              title,
              style: AppTextStyles.t14(color: colors.text1),
            ),
            CustomSpacer.S(),
            Text(
              description,
              style: AppTextStyles.t12(color: colors.text2),
            ),
            CustomSpacer.M(),
            PrimaryButtonWidget(
              title: btnTitle,
              onTap: onTap,
            )
          ],
        ));
  }
}

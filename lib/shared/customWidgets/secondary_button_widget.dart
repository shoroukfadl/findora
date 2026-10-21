import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/shared/customWidgets/custom_button_widget.dart';
import 'package:findora/shared/helper/hover_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  final double height, width;

  const SecondaryButtonWidget(
      {super.key,
      this.height = 56,
      this.width = double.infinity,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return HoverWidget(
        builder: (hover) => CustomButtonWidget(
              height: height,
              title: title,
              width: width,
              onPressed: onTap,
              borderColor: colors.border,
              btnColor: colors.card,
              borderRadiusValue: cardRadius,
              titleColor: colors.text1,
            ));
  }
}

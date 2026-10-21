import 'package:findora/shared/customWidgets/custom_button_widget.dart';
import 'package:findora/shared/helper/hover_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final double height;
  final double? width;
  final bool loading;

  const PrimaryButtonWidget(
      {super.key,
      this.loading = false,
      this.height = 56,
      this.width,
      required this.title,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return HoverWidget(
        builder: (hover) => CustomButtonWidget(
              height: height,
              title: title,
              onPressed: onTap,
              isLoading: loading,
              width: width,
              btnColor: hover ? colors.accentSoft : colors.accent,
              titleColor: Colors.white,
            ));
  }
}

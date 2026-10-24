import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondaryAppBar extends StatelessWidget {
  final String title;
  final Widget? tailWidget;

  const SecondaryAppBar({super.key, required this.title, this.tailWidget});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;
    return Row(
      spacing: 8,
      children: [
        InkWell(
          child: Icon(Findora.arrowLeft, size: 18, color: colors.text1),
          onTap: () => context.pop(),
        ),
        Text(
          title,
          style: AppTextStyles.h18(color: colors.text1),
        ).expand,
        if (tailWidget != null) tailWidget!,
      ],
    );
  }
}

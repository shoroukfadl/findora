import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondaryAppBar extends StatelessWidget {
  final String title;
  const SecondaryAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;
    return Row(
      children: [
        IconButton(
          icon: Icon(Findora.arrowLeft, size: 22, color: colors.text1),
          onPressed: () => context.pop(),
        ),
        Text(
          title,
          style: AppTextStyles.h20(color: colors.text1),
        ),
      ],
    );
  }
}

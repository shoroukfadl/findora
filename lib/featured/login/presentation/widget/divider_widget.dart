import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: colors.divider,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'or',
            style: AppTextStyles.b14(color: colors.text3),
          ),
        ),
        Expanded(
          child: Divider(
            color: colors.divider,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

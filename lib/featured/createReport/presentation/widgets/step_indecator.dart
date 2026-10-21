import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class StepIndecator extends StatelessWidget {
  final int current, total;
  const StepIndecator({super.key, required this.current, required this.total});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createStep(current, total),
          style: AppTextStyles.sT14(color: colors.text3),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: current / total,
            backgroundColor: colors.divider,
            valueColor: AlwaysStoppedAnimation<Color>(colors.accent),
            minHeight: 4,
          ),
        ),
      ],
    );
  }
}

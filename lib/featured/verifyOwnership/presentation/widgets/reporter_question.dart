import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReporterQuestion extends StatelessWidget {
  final String question;

  const ReporterQuestion({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.reviewClaim,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colors.border.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(cardRadius),
          ),
          child: Text(
            question,
            style: AppTextStyles.b15(color: colors.text1),
          ),
        ),
      ],
    );
  }
}

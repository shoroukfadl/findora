import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class TheirAnswer extends StatelessWidget {
  final String answer;

  const TheirAnswer({
    super.key,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.theirAnswer,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colors.card,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            answer,
            style: AppTextStyles.b15(color: colors.text1),
          ),
        ),
      ],
    );
  }
}

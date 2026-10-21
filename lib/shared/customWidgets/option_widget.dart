import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final bool selected;
  final String title;
  final String description;
  final VoidCallback onTap;
  const OptionWidget(
      {super.key,
      required this.selected,
      required this.title,
      required this.description,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: selected ? colors.surface : colors.card,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: Row(
        children: [
          Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.sT14(color: colors.text1)),
              Text(description, style: AppTextStyles.b12(color: colors.text2)),
            ],
          ),
          const Spacer(),
          if (selected) Icon(Findora.matched, color: colors.accent),
        ],
      ),
    );
  }
}

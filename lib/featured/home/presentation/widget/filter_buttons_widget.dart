import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class FilterButtonsWidget extends StatelessWidget {
  const FilterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Row(
      children: [
        _FilterChip(
          label: t.commonAll,
          isSelected: true,
          onTap: () {},
        ),
        const SizedBox(width: 8),
        _FilterChip(
          label: t.commonLost,
          isSelected: false,
          onTap: () {},
        ),
        const SizedBox(width: 8),
        _FilterChip(
          label: t.commonFound,
          isSelected: false,
          onTap: () {},
        ),
        const Spacer(),
        _FilterChip(
          label: t.commonFilters,
          isSelected: false,
          showIcon: true,
          onTap: () {},
        ),
      ],
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool showIcon;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? colors.accent : colors.card,
          borderRadius: BorderRadius.circular(pillsRadius),
          border: Border.all(
            color: isSelected ? colors.accent : colors.border,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showIcon)
              Icon(
                Icons.tune,
                size: 16,
                color: isSelected ? colors.onAccent : colors.text2,
              ),
            if (showIcon) const SizedBox(width: 4),
            Text(
              label,
              style: AppTextStyles.sT14(
                color: isSelected ? colors.onAccent : colors.text2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

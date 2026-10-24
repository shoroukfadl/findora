import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/layouts/filter_bottom_sheet.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/helper/helper_function.dart';
import 'package:flutter/material.dart';

class FilterButtonsWidget extends StatelessWidget {
  const FilterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    return Row(
      spacing: 8,
      children: [
        FilterChipWidget(
          label: t.commonAll,
          isSelected: true,
          onTap: () {},
        ),
        FilterChipWidget(
          label: t.commonLost,
          isSelected: false,
          onTap: () {},
        ),
        FilterChipWidget(
          label: t.commonFound,
          isSelected: false,
          onTap: () {},
        ),
        FilterChipWidget(
          label: t.commonFilters,
          isSelected: false,
          onTap: () {
            HelperFunctions.showCustomBottomSheet(context, FilterBottomSheet());
          },
        ),
      ],
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterChipWidget({
    required this.label,
    required this.isSelected,
    required this.onTap,
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
        ),
        child: Text(
          label,
          style: AppTextStyles.sT14(
            color: isSelected ? colors.onAccent : colors.text2,
          ),
        ),
      ),
    );
  }
}

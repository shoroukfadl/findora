import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final String? selectedCategory;
  final Function(String) onCategoryChanged;

  const CategorySelector({
    super.key,
    this.selectedCategory,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    final categories = [
      t.categoriesWallet,
      t.categoriesPhone,
      t.categoriesKeys,
      t.categoriesPet,
      t.categoriesBag,
      t.categoriesOther,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createCategory,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: categories.map((cat) {
            final isSelected = selectedCategory == cat;
            return GestureDetector(
              onTap: () => onCategoryChanged(cat),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected ? colors.accent : colors.card,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: isSelected ? colors.accent : colors.border,
                  ),
                ),
                child: Text(
                  cat,
                  style: AppTextStyles.sT15(
                    color: isSelected ? colors.onAccent : colors.text2,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

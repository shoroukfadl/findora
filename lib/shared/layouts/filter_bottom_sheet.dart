import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/home/presentation/widget/filter_buttons_widget.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/shared/customWidgets/secondary_button_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String selectedType = 'all';
  String selectedCategory = 'wallet';
  double distanceValue = 5.0;
  String selectedDate = 'any';

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Container(
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle bar
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: colors.text3.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Title
            Text(
              t.filtersTitle,
              style: AppTextStyles.h24(color: colors.text1),
            ),
            const SizedBox(height: 24),

            // Type Filter
            _FilterSection(
              label: t.filtersType,
              child: Row(
                spacing: 8,
                children: [
                  FilterChipWidget(
                    label: t.commonAll,
                    isSelected: selectedType == 'all',
                    onTap: () => setState(() => selectedType = 'all'),
                  ),
                  FilterChipWidget(
                    label: t.commonLost,
                    isSelected: selectedType == 'lost',
                    onTap: () => setState(() => selectedType = 'lost'),
                  ),
                  FilterChipWidget(
                    label: t.commonFound,
                    isSelected: selectedType == 'found',
                    onTap: () => setState(() => selectedType = 'found'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Category Filter
            _FilterSection(
              label: t.filtersCategory,
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  FilterChipWidget(
                    label: t.categoriesWallet,
                    isSelected: selectedCategory == 'wallet',
                    onTap: () => setState(() => selectedCategory = 'wallet'),
                  ),
                  FilterChipWidget(
                    label: t.categoriesPhone,
                    isSelected: selectedCategory == 'phone',
                    onTap: () => setState(() => selectedCategory = 'phone'),
                  ),
                  FilterChipWidget(
                    label: t.categoriesKeys,
                    isSelected: selectedCategory == 'keys',
                    onTap: () => setState(() => selectedCategory = 'keys'),
                  ),
                  FilterChipWidget(
                    label: t.categoriesPet,
                    isSelected: selectedCategory == 'pet',
                    onTap: () => setState(() => selectedCategory = 'pet'),
                  ),
                  FilterChipWidget(
                    label: t.categoriesBag,
                    isSelected: selectedCategory == 'bag',
                    onTap: () => setState(() => selectedCategory = 'bag'),
                  ),
                  FilterChipWidget(
                    label: t.categoriesOther,
                    isSelected: selectedCategory == 'other',
                    onTap: () => setState(() => selectedCategory = 'other'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Distance Filter
            _FilterSection(
              label: t.filtersDistance,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Slider(
                    value: distanceValue,
                    min: 1,
                    max: 50,
                    divisions: 49,
                    activeColor: colors.accent,
                    onChanged: (value) {
                      setState(() => distanceValue = value);
                    },
                  ),
                  Text(
                    '${distanceValue.toInt()} km',
                    style: AppTextStyles.b14(color: colors.text2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Date Filter
            _FilterSection(
              label: t.filtersDate,
              child: Row(
                spacing: 8,
                children: [
                  FilterChipWidget(
                    label: t.filtersAny,
                    isSelected: selectedDate == 'any',
                    onTap: () => setState(() => selectedDate = 'any'),
                  ),
                  FilterChipWidget(
                    label: t.filtersLast24h,
                    isSelected: selectedDate == '24h',
                    onTap: () => setState(() => selectedDate = '24h'),
                  ),
                  FilterChipWidget(
                    label: t.filtersLast7d,
                    isSelected: selectedDate == '7d',
                    onTap: () => setState(() => selectedDate = '7d'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Action Buttons
            Row(
              spacing: 12,
              children: [
                Expanded(
                    child: SecondaryButtonWidget(
                  onTap: () {
                    setState(() {
                      selectedType = 'all';
                      selectedCategory = 'wallet';
                      distanceValue = 5.0;
                      selectedDate = 'any';
                    });
                  },
                  title: t.commonReset,
                )),
                Expanded(
                  child: PrimaryButtonWidget(
                    onTap: () => Navigator.pop(context),
                    title: t.filtersShowResults,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _FilterSection extends StatelessWidget {
  final String label;
  final Widget child;

  const _FilterSection({
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.b16(color: colors.text1),
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}

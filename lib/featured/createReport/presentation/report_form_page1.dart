import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/theme/theme_colors.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReportFormPage1 extends StatelessWidget {
  final bool isLost;
  final ValueChanged<bool> onTypeChanged;
  final List<String> photos;
  final ValueChanged<List<String>> onPhotosChanged;
  final String title;
  final ValueChanged<String> onTitleChanged;
  final String category;
  final ValueChanged<String> onCategoryChanged;
  final String description;
  final ValueChanged<String> onDescriptionChanged;
  final VoidCallback onNext;

  const ReportFormPage1({
    super.key,
    required this.isLost,
    required this.onTypeChanged,
    required this.photos,
    required this.onPhotosChanged,
    required this.title,
    required this.onTitleChanged,
    required this.category,
    required this.onCategoryChanged,
    required this.description,
    required this.onDescriptionChanged,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        backgroundColor: colors.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.text1),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStepIndicator(context, 1, 3, colors),
              const SizedBox(height: 24),
              Text(
                t.createTitle,
                style: AppTextStyles.h24(color: colors.text1),
              ),
              const SizedBox(height: 24),
              _buildTypeToggle(context, colors),
              const SizedBox(height: 24),
              _buildPhotosSection(context, colors),
              const SizedBox(height: 24),
              _buildTitleInput(context, colors),
              const SizedBox(height: 24),
              _buildCategorySection(context, colors),
              const SizedBox(height: 24),
              _buildDescriptionInput(context, colors),
              const SizedBox(height: 32),
              _buildNextButton(context, colors),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepIndicator(
      BuildContext context, int current, int total, AppColors colors) {
    final t = context.t;
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

  Widget _buildTypeToggle(BuildContext context, AppColors colors) {
    final t = context.t;
    return Container(
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.border),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => onTypeChanged(true),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: isLost ? colors.lostBg : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    t.createILost,
                    style: AppTextStyles.sT16(
                      color: isLost ? colors.lostText : colors.text2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => onTypeChanged(false),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: !isLost ? colors.foundBg : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    t.createIFound,
                    style: AppTextStyles.sT16(
                      color: !isLost ? colors.foundText : colors.text2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotosSection(BuildContext context, AppColors colors) {
    final t = context.t;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createPhotos(5),
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: photos.length + 1,
            itemBuilder: (context, index) {
              if (index < photos.length) {
                return Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: colors.surface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(Icons.image, color: colors.text3, size: 32),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: () {
                            final newPhotos = List<String>.from(photos);
                            newPhotos.removeAt(index);
                            onPhotosChanged(newPhotos);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: colors.danger,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.close,
                                color: colors.onAccent, size: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return GestureDetector(
                  onTap: () {
                    if (photos.length < 5) {
                      final newPhotos = List<String>.from(photos);
                      newPhotos.add('photo_${photos.length}');
                      onPhotosChanged(newPhotos);
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: colors.card,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            photos.length < 5 ? colors.border : colors.divider,
                        style: photos.length < 5
                            ? BorderStyle.solid
                            : BorderStyle.solid,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: photos.length < 5 ? colors.accent : colors.text3,
                        size: 32,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTitleInput(BuildContext context, AppColors colors) {
    final t = context.t;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createTitleLabel,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: onTitleChanged,
          decoration: InputDecoration(
            hintText: t.createTitleHint,
            hintStyle: AppTextStyles.b15(color: colors.text3),
            filled: true,
            fillColor: colors.card,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.accent),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategorySection(BuildContext context, AppColors colors) {
    final t = context.t;
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
            final isSelected = category == cat;
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

  Widget _buildDescriptionInput(BuildContext context, AppColors colors) {
    final t = context.t;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createDescription,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 8),
        TextField(
          maxLines: 4,
          onChanged: onDescriptionChanged,
          decoration: InputDecoration(
            hintText: t.createDescriptionHint,
            hintStyle: AppTextStyles.b15(color: colors.text3),
            filled: true,
            fillColor: colors.card,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.accent),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNextButton(BuildContext context, AppColors colors) {
    final t = context.t;
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onNext,
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.accent,
          foregroundColor: colors.onAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          t.createContinueToLocation,
          style: AppTextStyles.sT16(color: colors.onAccent),
        ),
      ),
    );
  }
}

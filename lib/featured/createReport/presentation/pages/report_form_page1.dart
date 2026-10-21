import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/theme/theme_colors.dart';
import 'package:findora/featured/createReport/presentation/widgets/category_selector.dart';
import 'package:findora/featured/createReport/presentation/widgets/description_input_field.dart';
import 'package:findora/featured/createReport/presentation/widgets/next_button.dart';
import 'package:findora/featured/createReport/presentation/widgets/photo.dart';
import 'package:findora/featured/createReport/presentation/widgets/report_type.dart';
import 'package:findora/featured/createReport/presentation/widgets/step_indecator.dart';
import 'package:findora/featured/createReport/presentation/widgets/title_input_field.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
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

    return ScreenLayoutWidget(
      children: [
        StepIndecator(
          current: 1,
          total: 3,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        Text(
          t.createTitle,
          style: AppTextStyles.h20(color: colors.text1),
        ).asPaddedSliver(),
        const ScreenSpacer(),
        ReportType(
          isLost: isLost,
          onTypeChanged: onTypeChanged,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        PhotosSection(
          onPhotosChanged: onPhotosChanged,
          photos: photos,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        TitleInputField(
          title: title,
          onChanged: onTitleChanged,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        CategorySelector(
          selectedCategory: category,
          onCategoryChanged: onCategoryChanged,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        DescriptionInputField(
          description: description,
          onChanged: onDescriptionChanged,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        NextButton(
          onPressed: onNext,
        ).asPaddedSliver(),
      ],
    );
  }

}

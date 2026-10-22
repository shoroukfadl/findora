import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/createReport/presentation/widgets/address_input_field.dart';
import 'package:findora/featured/createReport/presentation/widgets/confirm_button.dart';
import 'package:findora/featured/createReport/presentation/widgets/date_picker_field.dart';
import 'package:findora/featured/createReport/presentation/widgets/map_section.dart';
import 'package:findora/featured/createReport/presentation/widgets/step_indecator.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReportFormPage2 extends StatelessWidget {
  final String address;
  final ValueChanged<String> onAddressChanged;
  final DateTime? dateLost;
  final ValueChanged<DateTime?> onDateLostChanged;
  final VoidCallback onConfirm;

  const ReportFormPage2({
    super.key,
    required this.address,
    required this.onAddressChanged,
    required this.dateLost,
    required this.onDateLostChanged,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return ScreenLayoutWidget(
      children: [
        StepIndecator(
          current: 2,
          total: 3,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        Text(
          t.createWhereWasIt,
          style: AppTextStyles.h20(color: colors.text1),
        ).asPaddedSliver(),
        const ScreenSpacer(),
        const MapSection().asPaddedSliver(),
        const ScreenSpacer(),
        AddressInputField(
          address: address,
          onChanged: onAddressChanged,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        CustomDatePicker(
          controller: TextEditingController(),
          initialDate: dateLost,
          onDateSelected: onDateLostChanged,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        ConfirmButton(
          onPressed: onConfirm,
        ).asPaddedSliver(),
      ],
    );
  }
}

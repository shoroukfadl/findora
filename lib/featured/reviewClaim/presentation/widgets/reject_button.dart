import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/custom_button_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class RejectButton extends StatelessWidget {
  const RejectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonWidget.outLined(
      title: context.t.rejectClaim,
      borderColor: context.colors.danger,
      titleColor: context.colors.danger,
      onPressed: () {},
    );
  }
}

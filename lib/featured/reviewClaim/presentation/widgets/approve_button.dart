import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class ApproveButton extends StatelessWidget {
  const ApproveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButtonWidget(
      title: context.t.approveOpenChat,
      onTap: () {},
    );
  }
}

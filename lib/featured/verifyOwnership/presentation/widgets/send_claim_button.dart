import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class SendClaimButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SendClaimButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return PrimaryButtonWidget(
      width: double.infinity,
      height: 56,
      onTap: onPressed,
      title: t.claimSend,
    );
  }
}

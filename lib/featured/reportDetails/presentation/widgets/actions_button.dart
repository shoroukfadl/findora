import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/shared/customWidgets/secondary_button_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ActionsButton extends StatelessWidget {
  const ActionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
          bottom: mobileVetPadding / 2,
          right: mobileHozPadding,
          left: mobileHozPadding),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: Row(
        spacing: 12,
        children: [
          Expanded(
              flex: 2,
              child: SecondaryButtonWidget(
                onTap: () {},
                title: t.commonSave,
              )),
          Expanded(
            flex: 3,
            child: PrimaryButtonWidget(
              onTap: () => Navigator.pop(context),
              title: t.detailsIFoundIt,
            ),
          ),
        ],
      ),
    );
  }
}

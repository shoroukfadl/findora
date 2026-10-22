import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class NotificationHint extends StatelessWidget {
  const NotificationHint({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Center(
      child: Text(
        t.claimNotifyHint,
        style: AppTextStyles.sT12(color: colors.text3),
        textAlign: TextAlign.center,
      ),
    );
  }
}

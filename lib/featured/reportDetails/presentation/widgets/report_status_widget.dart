import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReportStatusWidget extends StatelessWidget {
  final ReportStatus currentStatus;

  const ReportStatusWidget({super.key, required this.currentStatus});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: mobileHozPadding, vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.all(
          Radius.circular(cardRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...ReportStatus.values.map((v) => Row(
                spacing: 4,
                children: [
                  if (v == currentStatus)
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: colors.accent,
                    ),
                  Text(
                    t.tr(v.name),
                    style: AppTextStyles.b12(
                        color:
                            v == currentStatus ? colors.accent : colors.text2),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

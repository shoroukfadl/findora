import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final String status;

  const StatusWidget({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final isLost = status == 'Lost';
    final statusColor = isLost ? colors.lostText : colors.foundText;
    final statusBg = isLost ? colors.lostBg : colors.foundBg;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: statusBg,
        borderRadius: BorderRadius.circular(pillsRadius),
      ),
      child: Text(
        status,
        style: AppTextStyles.sT12(color: statusColor),
      ),
    );
  }
}

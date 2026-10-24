import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class StatusSelector extends StatelessWidget {
  final ReportStatus selectedStatus;
  final Function(ReportStatus) onStatusChanged;

  const StatusSelector({
    super.key,
    required this.selectedStatus,
    required this.onStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 8),
        Row(
          children: ReportStatus.values.map((status) {
            final isSelected = status == selectedStatus;
            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: status != ReportStatus.values.last ? 8 : 0,
                ),
                child: InkWell(
                  onTap: () => onStatusChanged(status),
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: isSelected ? colors.accent : colors.card,
                      borderRadius: BorderRadius.circular(pillsRadius),
                    ),
                    child: Text(
                      t.tr(status.name),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.b14(
                        color: isSelected ? Colors.white : colors.text1,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

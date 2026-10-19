import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/shared/customWidgets/segmented_button.dart';
import 'package:findora/shared/customWidgets/switch_button.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';

class SettingsItem<T> extends StatelessWidget {
  final SegmentOption<T> item;
  final bool isLast;

  final void Function(T) onTap;

  final Color? color, iconColor;

  final T? value;

  final bool _isArrow;

  const SettingsItem.Arrow({
    super.key,
    required this.onTap,
    required this.item,
    this.isLast = false,
    this.color,
    this.iconColor,
  })  : _isArrow = true,
        value = null;

  const SettingsItem.List({
    super.key,
    required this.onTap,
    required this.item,
    this.value,
    this.isLast = false,
    this.color,
    this.iconColor,
  }) : _isArrow = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final fg = iconColor ?? colors.text2;

    return Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 16),
        margin: EdgeInsetsGeometry.symmetric(horizontal: mobileHozPadding),
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        child: Row(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(item.label, style: AppTextStyles.sT12(color: fg)),
            if (_isArrow) ...[
              const Spacer(),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () => onTap(item.value),
                child: Icon(
                  Findora.arrowRight,
                  size: 16,
                  color: iconColor ?? colors.text2,
                ),
              ),
            ] else ...[
              const Spacer(),
              SwitchButton(
                  active: item.value as bool,
                  onTap: (_) {
                    onTap(item.value);
                  }),
            ],
          ],
        ));
  }
}

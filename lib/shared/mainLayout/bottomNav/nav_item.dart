import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/shared/mainLayout/bottomNav/nav_model.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final NavModel item;
  final bool isSelected;
  final VoidCallback onTap;

  const NavItem({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Column(spacing: 4, children: [
        Icon(item.icon,
            size: 20, color: isSelected ? colors.accent : colors.text3),
        Text(
          item.label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: isSelected
              ? AppTextStyles.t14(color: colors.accent)
              : AppTextStyles.sT14(color: colors.text3),
        ),
      ]),
    );
  }
}

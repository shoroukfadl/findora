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
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            );
          },
          child: Icon(
            isSelected ? item.selectedIcon : item.icon,
            size: 24,
            color: isSelected ? colors.accent : colors.text3,
            key: ValueKey(isSelected ? item.selectedIcon : item.icon),
          ),
        ),
        Text(
          item.label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.sT12(
              color: isSelected ? colors.accent : colors.text3),
        ),
      ]),
    );
  }
}

import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';

class NavFab extends StatelessWidget {
  const NavFab();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: colors.secondary,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: colors.onSecondary.withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Icon(
          Findora.add,
          color: colors.onSecondary,
          size: 28,
        ),
      ),
    );
  }
}

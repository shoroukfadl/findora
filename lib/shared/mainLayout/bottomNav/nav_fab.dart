import 'dart:math' as math;

import 'package:findora/featured/createReport/presentation/create_report.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavFab extends StatelessWidget {
  const NavFab({super.key, this.icon = Findora.add});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return GestureDetector(
      onTap: () {
        context.goNamed(CreateReport.routeName);
      },
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 72,
        height: 72,
        child: Center(
          child: Transform.rotate(
            angle: math.pi / 4,
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: colors.secondary,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: colors.secondary.withValues(alpha: 0.35),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: Icon(
                  icon,
                  color: colors.onSecondary,
                  size: 28,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

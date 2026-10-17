import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/routing/router_config.dart';
import 'package:flutter/material.dart';

import '../../Utilities/Constants/global_keys.dart';

class MainLayoutWidget extends StatefulWidget {
  final Widget child;
  final String? currentPath;

  const MainLayoutWidget({super.key, required this.child, this.currentPath});

  @override
  State<MainLayoutWidget> createState() => _MainLayoutWidgetState();
}

class _MainLayoutWidgetState extends State<MainLayoutWidget> {
  static const double _designWidth = 1539;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final screenWidth = MediaQuery.of(context).size.width;

    final scale = screenWidth > _designWidth
        ? (screenWidth / _designWidth).clamp(0.5, 1.0)
        : 1.0;

    final currentRoute = widget.currentPath?.split('/').last;
    final hideBottomNav = preventedRoutes.contains(currentRoute);
    return Scaffold(
      key: GlobalKeys.scaffoldKey,
      backgroundColor: colors.card,
      appBar: hideBottomNav
          ? null
          : AppBar(
              backgroundColor: colors.card,
              elevation: 0,
              title: Text(
                context.t.tr(widget.currentPath?.split("/").last ?? ""),
                style: AppTextStyles.h18(color: colors.text1),
              ),
            ),
      // bottomNavigationBar: hideBottomNav
      //     ? null
      //     : BottomNavBarItems(
      //         currentPath: widget.currentPath,
      //       ),
      body: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 400),
        child: widget.child,
      ),
    );
  }
}

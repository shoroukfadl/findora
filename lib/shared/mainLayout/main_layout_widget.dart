import 'package:findora/shared/mainLayout/bottomNav/bottom_nav_widget.dart';
import 'package:findora/shared/mainLayout/bottomNav/nav_fab.dart';
import 'package:findora/utilities/extentions/extensions.dart';
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

    debugPrint("scale: ${widget.currentPath}");
    return Scaffold(
      key: GlobalKeys.scaffoldKey,
      backgroundColor: colors.background,
      floatingActionButton: const NavFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavWidget(
        path: widget.currentPath ?? "",
      ),
      body: widget.child,
    );
  }
}

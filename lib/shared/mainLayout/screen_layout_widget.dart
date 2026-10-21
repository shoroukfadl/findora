import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ScreenLayoutWidget extends StatelessWidget {
  final List<Widget> children;
  final double verPadding;
  final Widget? bottom;

  const ScreenLayoutWidget({
    super.key,
    this.verPadding = 40,
    this.bottom,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: verPadding),
            child: CustomScrollView(slivers: children),
          ),
        ),
        if (bottom != null) bottom!,
      ],
    );
  }
}

class SubLayoutWidget extends StatelessWidget {
  final Widget child;

  const SubLayoutWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: child,
    );
  }
}

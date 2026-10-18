import 'package:flutter/material.dart';

class ScreenLayoutWidget extends StatelessWidget {
  final List<Widget> children;
  final double verPadding;

  const ScreenLayoutWidget({
    super.key,
    this.verPadding = 40,
    required this.children,
  });

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: verPadding,
        ),
        child: CustomScrollView(
          slivers: children,
        ));
  }
}

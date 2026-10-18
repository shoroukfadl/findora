import 'package:flutter/cupertino.dart';

class NavModel {
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final String route;

  NavModel({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.route,
  });
}

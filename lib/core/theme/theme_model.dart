import 'package:findora/core/Theme/theme_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    extensions: const [AppColors.light],
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    extensions: const [AppColors.dark],
  );
}

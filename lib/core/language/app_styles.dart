import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
abstract class AppTextStyles extends ThemeExtension<AppTextStyles> {
  // ─── Font families ────────────────────────────────────────────────────────
  // English: Sora (headings/titles) + DM Sans (body)
  // Arabic : Cairo (everything) — Sora & DM Sans don't support Arabic.

  /// Call this when the app locale changes, e.g. from your locale cubit:
  /// AppTextStyles.isArabic = locale.languageCode == 'ar';
  static bool isArabic = false;

  static TextStyle get headingFamily =>
      isArabic ? GoogleFonts.cairo() : GoogleFonts.sora();

  static TextStyle get bodyFamily =>
      isArabic ? GoogleFonts.elMessiri() : GoogleFonts.dmSans();

  /// -------------------------------- Basic Functions ----------------------------------------
  /// [color] is nullable on purpose: when null the text inherits the theme's
  /// default color, so it works in both light and dark modes.
  /// Pass `context.colors.text1` / `text2` when you need a specific one.
  static TextStyle _heading(double size, FontWeight w, Color? color) =>
      headingFamily.copyWith(fontSize: size, fontWeight: w, color: color);

  static TextStyle _body(double size, FontWeight w, Color? color) =>
      bodyFamily.copyWith(fontSize: size, fontWeight: w, color: color);

  /// Headings (Sora / Cairo) — screen titles, app name
  static TextStyle h26({Color? color}) => _heading(26, FontWeight.w700, color);

  static TextStyle h24({Color? color}) => _heading(24, FontWeight.w700, color);

  static TextStyle h22({Color? color}) => _heading(22, FontWeight.w700, color);

  static TextStyle h20({Color? color}) => _heading(20, FontWeight.w700, color);

  static TextStyle h18({Color? color}) => _heading(18, FontWeight.w700, color);

  /// Titles (Sora / Cairo) — card titles, section titles
  static TextStyle t18({Color? color}) => _heading(18, FontWeight.w600, color);

  static TextStyle t16({Color? color}) => _heading(16, FontWeight.w600, color);

  static TextStyle t15({Color? color}) => _heading(15, FontWeight.w600, color);

  static TextStyle t14({Color? color}) => _heading(14, FontWeight.w600, color);

  static TextStyle t12({Color? color}) => _heading(12, FontWeight.w600, color);

  static TextStyle t10({Color? color}) => _heading(10, FontWeight.w600, color);

  /// Sub titles (DM Sans / Cairo) — buttons, labels, chips, tabs
  static TextStyle sT18({Color? color}) => _body(18, FontWeight.w600, color);

  static TextStyle sT16({Color? color}) => _body(16, FontWeight.w600, color);

  static TextStyle sT15({Color? color}) => _body(15, FontWeight.w600, color);

  static TextStyle sT14({Color? color}) => _body(14, FontWeight.w600, color);

  static TextStyle sT12({Color? color}) => _body(12, FontWeight.w600, color);

  static TextStyle sT10({Color? color}) => _body(10, FontWeight.w600, color);

  /// Body (DM Sans / Cairo) — descriptions, messages, secondary text
  static TextStyle b16({Color? color}) => _body(16, FontWeight.w400, color);

  static TextStyle b15({Color? color}) => _body(15, FontWeight.w400, color);

  static TextStyle b14({Color? color}) => _body(14, FontWeight.w400, color);

  static TextStyle b13({Color? color}) => _body(13, FontWeight.w400, color);

  static TextStyle b12({Color? color}) => _body(12, FontWeight.w400, color);

  static TextStyle b10({Color? color}) => _body(10, FontWeight.w400, color);

  static TextStyle b9({Color? color}) => _body(9, FontWeight.w400, color);
}

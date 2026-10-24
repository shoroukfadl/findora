import 'package:findora/core/config/app_config.dart';
import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color background;
  final Color card;
  final Color surface;
  final Color accent;
  final Color onAccent;
  final Color accentSoft;
  final Color accentText;
  final Color secondary;
  final Color onSecondary;
  final Color secondarySoft;
  final Color success;
  final Color warning;
  final Color danger;
  final Color text1;
  final Color text2;
  final Color text3;
  final Color border;
  final Color divider;
  final Color lostBg;
  final Color lostText;
  final Color foundBg;
  final Color foundText;
  final Color scrim;
  final Color shadow;

  const AppColors({
    required this.background,
    required this.card,
    required this.surface,
    required this.accent,
    required this.onAccent,
    required this.accentSoft,
    required this.accentText,
    required this.secondary,
    required this.onSecondary,
    required this.secondarySoft,
    required this.success,
    required this.warning,
    required this.danger,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.border,
    required this.divider,
    required this.lostBg,
    required this.lostText,
    required this.foundBg,
    required this.foundText,
    required this.scrim,
    required this.shadow,
  });

  static AppColors _base({required bool isDark}) {
    return isDark ? dark : light;
  }

  static AppColors resolve({required bool isDark}) {
    final base = _base(isDark: isDark);
    return AppFlavor.isDev ? _base(isDark: isDark) : base;
  }

  // Ocean + Orange - light
  static const light = AppColors(
    background: Color(0xFFF3F7FB),
    card: Color(0xFFFFFFFF),
    surface: Color(0xFFE1EAF3),
    accent: Color(0xFF0B67B2),
    onAccent: Color(0xFFFFFFFF),
    accentSoft: Color(0xFFE3EFFA),
    accentText: Color(0xFF0B67B2),
    secondary: Color(0xFFF28C38),
    onSecondary: Color(0xFF2A1404),
    secondarySoft: Color(0xFFFDEBD8),
    success: Color(0xFF1F9D6E),
    warning: Color(0xFFE8A317),
    danger: Color(0xFFD93F45),
    text1: Color(0xFF0F1D2B),
    text2: Color(0xFF56677A),
    text3: Color(0xFF8997A8),
    border: Color(0xFFC9D6E3),
    divider: Color(0xFFE1E9F1),
    lostBg: Color(0xFFFDE4E1),
    lostText: Color(0xFFA12A1B),
    foundBg: Color(0xFFDAF2E6),
    foundText: Color(0xFF0C5D3E),
    scrim: Color(0x8C0F1D2B),
    shadow: Color(0x2E0F1D2B),
  );

  // Ocean + Orange - dark
  static const dark = AppColors(
    background: Color(0xFF0A121C),
    card: Color(0xFF122030),
    surface: Color(0xFF1A2C40),
    accent: Color(0xFF1E75C6),
    onAccent: Color(0xFFFFFFFF),
    accentSoft: Color(0xFF132B44),
    accentText: Color(0xFF8CC4F5),
    secondary: Color(0xFFF5A25D),
    onSecondary: Color(0xFF2A1404),
    secondarySoft: Color(0xFF33210F),
    success: Color(0xFF4CC38A),
    warning: Color(0xFFF2BC4B),
    danger: Color(0xFFF27A7E),
    text1: Color(0xFFE6EEF7),
    text2: Color(0xFF9FB0C2),
    text3: Color(0xFF6F8196),
    border: Color(0xFF263A50),
    divider: Color(0xFF1D3044),
    lostBg: Color(0xFF3A1E1B),
    lostText: Color(0xFFFFAFA5),
    foundBg: Color(0xFF123223),
    foundText: Color(0xFF86DDA6),
    scrim: Color(0x8C000000),
    shadow: Color(0x66000000),
  );

  static const roseTealLight = AppColors(
    background: Color(0xFFFAF6F8),
    card: Color(0xFFFFFFFF),
    surface: Color(0xFFEFE6EB),
    secondary: Color(0xFFBE185D),
    onSecondary: Color(0xFFFFFFFF),
    secondarySoft: Color(0xFFFBE6EF),
    accentText: Color(0xFFA8164F),
    accent: Color(0xFF14B8A6),
    onAccent: Color(0xFF04231F),
    accentSoft: Color(0xFFD9F5F1),
    success: Color(0xFF2AA876),
    warning: Color(0xFFE8A317),
    danger: Color(0xFFDC2626),
    text1: Color(0xFF241519),
    text2: Color(0xFF6B5560),
    text3: Color(0xFF9C8A93),
    border: Color(0xFFE0D0D8),
    divider: Color(0xFFEEE3E8),
    lostBg: Color(0xFFFDEBD3),
    lostText: Color(0xFF9A4A06),
    foundBg: Color(0xFFD9F2EA),
    foundText: Color(0xFF0B6B4A),
    scrim: Color(0x8C241519),
    shadow: Color(0x2E241519),
  );

  static const roseTealDark = AppColors(
    background: Color(0xFF140B10),
    card: Color(0xFF1F141A),
    surface: Color(0xFF2B1D25),
    secondary: Color(0xFFCC2B66),
    onSecondary: Color(0xFFFFFFFF),
    secondarySoft: Color(0xFF3A1727),
    accentText: Color(0xFFFF9DC0),
    accent: Color(0xFF2DD4BF),
    onAccent: Color(0xFF04231F),
    accentSoft: Color(0xFF123530),
    success: Color(0xFF4ADE9C),
    warning: Color(0xFFF5B95B),
    danger: Color(0xFFF5707A),
    text1: Color(0xFFF3E8EE),
    text2: Color(0xFFB8A5AF),
    text3: Color(0xFF85727C),
    border: Color(0xFF3D2B35),
    divider: Color(0xFF2F2129),
    lostBg: Color(0xFF3A2610),
    lostText: Color(0xFFFFC98A),
    foundBg: Color(0xFF123B30),
    foundText: Color(0xFF7CE7C2),
    scrim: Color(0x8C000000),
    shadow: Color(0x66000000),
  );

  @override
  AppColors copyWith({
    Color? background,
    Color? card,
    Color? surface,
    Color? accent,
    Color? onAccent,
    Color? accentSoft,
    Color? accentText,
    Color? secondary,
    Color? onSecondary,
    Color? secondarySoft,
    Color? success,
    Color? warning,
    Color? danger,
    Color? text1,
    Color? text2,
    Color? text3,
    Color? border,
    Color? divider,
    Color? lostBg,
    Color? lostText,
    Color? foundBg,
    Color? foundText,
    Color? scrim,
    Color? shadow,
  }) {
    return AppColors(
      background: background ?? this.background,
      card: card ?? this.card,
      surface: surface ?? this.surface,
      accent: accent ?? this.accent,
      onAccent: onAccent ?? this.onAccent,
      accentSoft: accentSoft ?? this.accentSoft,
      accentText: accentText ?? this.accentText,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      secondarySoft: secondarySoft ?? this.secondarySoft,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      text1: text1 ?? this.text1,
      text2: text2 ?? this.text2,
      text3: text3 ?? this.text3,
      border: border ?? this.border,
      divider: divider ?? this.divider,
      lostBg: lostBg ?? this.lostBg,
      lostText: lostText ?? this.lostText,
      foundBg: foundBg ?? this.foundBg,
      foundText: foundText ?? this.foundText,
      scrim: scrim ?? this.scrim,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      card: Color.lerp(card, other.card, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      onAccent: Color.lerp(onAccent, other.onAccent, t)!,
      accentSoft: Color.lerp(accentSoft, other.accentSoft, t)!,
      accentText: Color.lerp(accentText, other.accentText, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      secondarySoft: Color.lerp(secondarySoft, other.secondarySoft, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      text1: Color.lerp(text1, other.text1, t)!,
      text2: Color.lerp(text2, other.text2, t)!,
      text3: Color.lerp(text3, other.text3, t)!,
      border: Color.lerp(border, other.border, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      lostBg: Color.lerp(lostBg, other.lostBg, t)!,
      lostText: Color.lerp(lostText, other.lostText, t)!,
      foundBg: Color.lerp(foundBg, other.foundBg, t)!,
      foundText: Color.lerp(foundText, other.foundText, t)!,
      scrim: Color.lerp(scrim, other.scrim, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
    );
  }
}

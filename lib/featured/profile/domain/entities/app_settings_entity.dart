import 'package:equatable/equatable.dart';

enum AppThemeMode { system, light, dark }

/// Local settings (SharedPreferences): Language sheet (en / ar) and theme.
class AppSettingsEntity extends Equatable {
  final String languageCode;
  final AppThemeMode themeMode;

  const AppSettingsEntity({
    this.languageCode = 'en',
    this.themeMode = AppThemeMode.system,
  });

  bool get isArabic => languageCode == 'ar';

  AppSettingsEntity copyWith({
    String? languageCode,
    AppThemeMode? themeMode,
  }) {
    return AppSettingsEntity(
      languageCode: languageCode ?? this.languageCode,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  List<Object?> get props => [languageCode, themeMode];
}

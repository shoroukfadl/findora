import 'package:findora/featured/profile/domain/entities/app_settings_entity.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

AppThemeMode _themeModeFromJson(dynamic json) =>
    enumFrom(AppThemeMode.values, json, AppThemeMode.system);

String _themeModeToJson(AppThemeMode mode) => mode.name;

@freezed
abstract class AppSettingsModel with _$AppSettingsModel {
  const AppSettingsModel._();
  const factory AppSettingsModel({
    @Default('en') String languageCode,
    @JsonKey(fromJson: _themeModeFromJson, toJson: _themeModeToJson)
    @Default(AppThemeMode.system)
    AppThemeMode themeMode,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);
}

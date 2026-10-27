import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier(this._box)
    : super(Locale(_box.get('locale', defaultValue: 'en') as String));

  final Box _box;

  Future<void> setLocale(String code) async {
    await _box.put('locale', code);
    state = Locale(code);
  }
}

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier(ref.watch(settingsBoxProvider));
});

final settingsBoxProvider = Provider<Box>((ref) {
  throw UnimplementedError(
    'settingsBoxProvider must be overridden in main.dart',
  );
});

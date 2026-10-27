import 'package:collection/collection.dart';
import 'package:findora/core/localStorage/boxes.dart';
import 'package:findora/core/localStorage/hive_helper.dart';
import 'package:findora/core/localStorage/hive_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeState {
  final ThemeMode theme;

  const ThemeState({required this.theme});

  factory ThemeState.init() => const ThemeState(theme: ThemeMode.system);

  ThemeState copyWith({ThemeMode? theme}) =>
      ThemeState(theme: theme ?? this.theme);
}

class ThemeNotifier extends StateNotifier<ThemeState> {
  final HiveManager hiveManager;

  ThemeNotifier(this.hiveManager) : super(ThemeState.init());

  void changeTheme(ThemeMode theme) async {
    state = state.copyWith(theme: theme);
    final hive = HiveHelper<String>(
        hiveManager: hiveManager, boxName: HiveBox.user);
    await hive.put(key: 'theme', value: state.theme.name);
  }

  void getCurrentTheme() async {
    final hive = HiveHelper<String>(
        hiveManager: hiveManager, boxName: HiveBox.user);
    final th = await hive.get('theme');
    final theme = ThemeMode.values.firstWhereOrNull((e) => e.name == th) ??
        ThemeMode.system;
    state = state.copyWith(theme: theme);
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  return ThemeNotifier(ref.watch(hiveManagerProvider));
});

final hiveManagerProvider = Provider<HiveManager>((ref) {
  throw UnimplementedError('hiveManagerProvider must be overridden in main.dart');
});

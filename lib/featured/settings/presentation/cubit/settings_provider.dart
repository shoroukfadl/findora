import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:findora/featured/settings/data/dataSource/remote/settings_remote_data_source.dart';
import 'package:findora/featured/settings/data/dataSource/remote/settings_remote_data_source_impl.dart';
import 'package:findora/featured/settings/data/repository/settings_repo_imp.dart';
import 'package:findora/featured/settings/domain/repository/settings_repo.dart';
import 'package:findora/featured/settings/domain/usecase/settings_usecase.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsState {
  final RequestStatus logoutStatus;

  const SettingsState({
    this.logoutStatus = const RequestInitial(),
  });

  SettingsState copyWith({
    RequestStatus? logoutStatus,
  }) =>
      SettingsState(
        logoutStatus: logoutStatus ?? this.logoutStatus,
      );
}

class SettingsNotifier extends StateNotifier<SettingsState> {
  final LogoutUsecase logoutUsecase;

  SettingsNotifier({required this.logoutUsecase}) : super(const SettingsState());

  Future<void> logout() async {
    state = state.copyWith(logoutStatus: const RequestLoading());

    final result = await logoutUsecase.call();

    result.fold(
      (failure) => state = state.copyWith(
        logoutStatus: RequestFailure(failure.message),
      ),
      (_) => state = state.copyWith(
        logoutStatus: const RequestSuccess(),
      ),
    );
  }

  void resetState() => state = const SettingsState();
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, SettingsState>((ref) {
  return SettingsNotifier(
    logoutUsecase: ref.watch(logoutUsecaseProvider),
  );
});

// UseCase Provider
final logoutUsecaseProvider = Provider<LogoutUsecase>((ref) {
  return LogoutUsecase(repository: ref.watch(settingsRepositoryProvider));
});

// Repository Provider
final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  return SettingsRepositoryImpl(
    remoteDataSource: ref.watch(settingsRemoteDataSourceProvider),
  );
});

// DataSource Provider
final settingsRemoteDataSourceProvider = Provider<SettingsRemoteDataSource>((ref) {
  return SettingsRemoteDataSourceImpl(
    ref.watch(firebaseAuthProvider),
    ref.watch(firebaseFirestoreProvider),
  );
});

// Firebase Providers (shared with login)
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final firebaseFirestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

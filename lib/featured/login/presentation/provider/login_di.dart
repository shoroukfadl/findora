import 'package:findora/core/network/firebase_providers.dart';
import 'package:findora/featured/login/data/dataSource/remote/login_remote_data_source.dart';
import 'package:findora/featured/login/data/dataSource/remote/login_remote_data_source_impl.dart';
import 'package:findora/featured/login/data/repository/login_repo_imp.dart';
import 'package:findora/featured/login/domain/repository/login_repo.dart';
import 'package:findora/featured/login/domain/usecase/auth_state_usecase.dart';
import 'package:findora/featured/login/domain/usecase/login_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSources
final loginRemoteDataSourceProvider = Provider<LoginRemoteDataSource>(
  (ref) => LoginRemoteDataSourceImpl(
    ref.watch(firebaseAuthProvider),
    ref.watch(firebaseFirestoreProvider),
  ),
);

// Repository
final loginRepositoryProvider = Provider<LoginRepository>(
  (ref) => LoginRepositoryImpl(
    remoteDataSource: ref.watch(loginRemoteDataSourceProvider),
  ),
);

// UseCases
final loginUsecaseProvider = Provider<LoginUsecase>(
  (ref) => LoginUsecase(repository: ref.watch(loginRepositoryProvider)),
);

final authUsecaseProvider = Provider<AuthStateUsecase>(
  (ref) => AuthStateUsecase(repository: ref.watch(loginRepositoryProvider)),
);

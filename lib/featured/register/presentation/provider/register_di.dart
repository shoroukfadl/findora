import 'package:findora/core/network/firebase_providers.dart';
import 'package:findora/featured/register/data/dataSource/remote/register_remote_data_source.dart';
import 'package:findora/featured/register/data/dataSource/remote/register_remote_data_source_impl.dart';
import 'package:findora/featured/register/data/repository/register_repo_imp.dart';
import 'package:findora/featured/register/domain/repository/register_repo.dart';
import 'package:findora/featured/register/domain/usecase/register_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSources
final registerRemoteDataSourceProvider = Provider<RegisterRemoteDataSource>(
  (ref) => RegisterRemoteDataSourceImpl(
    ref.watch(firebaseAuthProvider),
  ),
);

// Repository
final registerRepositoryProvider = Provider<RegisterRepository>(
  (ref) => RegisterRepositoryImpl(
    remoteDataSource: ref.watch(registerRemoteDataSourceProvider),
  ),
);

// UseCases
final registerUsecaseProvider = Provider<RegisterUsecase>(
  (ref) => RegisterUsecase(repository: ref.watch(registerRepositoryProvider)),
);

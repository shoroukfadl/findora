import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/register/data/dataSource/remote/register_remote_data_source.dart';
import 'package:findora/featured/register/domain/params/auth_params.dart';
import 'package:findora/featured/register/domain/repository/register_repo.dart';
import 'package:findora/utilities/requests/request_status.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource remoteDataSource;

  RegisterRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<RequestFailure, UserEntity>> register(
    RegisterParams params,
  ) async {
    final result = await remoteDataSource.register(params);
    return result.fold((failure) => Either.left(failure), (userModel) {
      return Either.right(userModel.toEntity());
    });
  }
}

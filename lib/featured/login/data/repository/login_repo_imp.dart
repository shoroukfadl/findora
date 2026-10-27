import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/data/dataSource/remote/login_remote_data_source.dart';
import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/login/domain/params/auth_params.dart';
import 'package:findora/featured/login/domain/repository/login_repo.dart';
import 'package:findora/utilities/requests/request_status.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;

  LoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<RequestFailure, UserEntity>> login(LoginParams params) async {
    final result = await remoteDataSource.login(params);
    return result.fold((failure) => Either.left(failure), (userModel) {
      return Either.right(userModel.toEntity());
    });
  }

  @override
  Stream<UserEntity?> authStateChanges() {
    return remoteDataSource.authStateChanges().map(
      (userModel) => userModel?.toEntity(),
    );
  }
}

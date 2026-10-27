import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/login/domain/params/auth_params.dart';
import 'package:findora/featured/login/domain/repository/login_repo.dart';
import 'package:findora/utilities/requests/request_status.dart';

class LoginUsecase {
  final LoginRepository repository;

  LoginUsecase({required this.repository});

  Future<Either<RequestFailure, UserEntity>> call(LoginParams params) async {
    return await repository.login(params);
  }
}

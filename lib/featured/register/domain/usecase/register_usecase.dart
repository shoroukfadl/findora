import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/register/domain/params/auth_params.dart';
import 'package:findora/featured/register/domain/repository/register_repo.dart';
import 'package:findora/utilities/requests/request_status.dart';

class RegisterUsecase {
  final RegisterRepository repository;

  RegisterUsecase({required this.repository});

  Future<Either<RequestFailure, UserEntity>> call(RegisterParams params) async {
    return await repository.register(params);
  }
}

import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/register/domain/params/auth_params.dart';
import 'package:findora/utilities/requests/request_status.dart';

abstract class RegisterRepository {
  Future<Either<RequestFailure, UserEntity>> register(RegisterParams params);
}

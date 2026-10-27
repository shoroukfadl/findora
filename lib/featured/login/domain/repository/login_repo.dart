import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/login/domain/params/auth_params.dart';
import 'package:findora/utilities/requests/request_status.dart';

abstract class LoginRepository {
  Future<Either<RequestFailure, UserEntity>> login(LoginParams params);
  Stream<UserEntity?> authStateChanges();
}

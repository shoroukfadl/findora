import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/data/models/user_model.dart';
import 'package:findora/featured/login/domain/params/auth_params.dart';
import 'package:findora/utilities/requests/request_status.dart';

abstract class LoginRemoteDataSource {
  Future<Either<RequestFailure, UserModel>> login(LoginParams params);
  Stream<UserModel?> authStateChanges();
}

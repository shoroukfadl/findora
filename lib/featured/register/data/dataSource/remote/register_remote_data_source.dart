import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/login/data/models/user_model.dart';
import 'package:findora/featured/register/domain/params/auth_params.dart';
import 'package:findora/utilities/requests/request_status.dart';

abstract class RegisterRemoteDataSource {
  Future<Either<RequestFailure, UserModel>> register(RegisterParams params);
}

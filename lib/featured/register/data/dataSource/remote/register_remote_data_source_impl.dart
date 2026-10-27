import 'package:findora/core/network/check_network.dart';
import 'package:findora/core/network/custom_either.dart';
import 'package:findora/core/network/network.dart';
import 'package:findora/featured/login/data/models/user_model.dart';
import 'package:findora/featured/register/data/dataSource/remote/register_remote_data_source.dart';
import 'package:findora/featured/register/domain/params/auth_params.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRemoteDataSourceImpl
    with RemoteGuard
    implements RegisterRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  @override
  final ConnectivityService connectivityService;

  RegisterRemoteDataSourceImpl(
    this.firebaseAuth, {
    ConnectivityService? accessibilityService,
  }) : connectivityService =
           accessibilityService ?? ConnectivityService.instance;

  @override
  Future<Either<RequestFailure, UserModel>> register(RegisterParams params) =>
      guard(() async {
        final credential = await firebaseAuth.createUserWithEmailAndPassword(
          email: params.email,
          password: params.password,
        );

        await firebaseAuth.currentUser?.sendEmailVerification();

        throw Exception('User document not found');
      });
}

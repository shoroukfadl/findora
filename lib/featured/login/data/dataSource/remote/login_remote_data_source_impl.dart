import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/core/network/check_network.dart';
import 'package:findora/core/network/custom_either.dart';
import 'package:findora/core/network/network.dart';
import 'package:findora/featured/login/data/dataSource/remote/login_remote_data_source.dart';
import 'package:findora/featured/login/data/models/user_model.dart';
import 'package:findora/featured/login/domain/params/auth_params.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRemoteDataSourceImpl
    with RemoteGuard
    implements LoginRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  @override
  final ConnectivityService connectivityService;

  LoginRemoteDataSourceImpl(
    this.firebaseAuth,
    this.firestore, {
    ConnectivityService? accessibilityService,
  }) : connectivityService =
           accessibilityService ?? ConnectivityService.instance;

  @override
  Future<Either<RequestFailure, UserModel>> login(LoginParams params) =>
      guard(() async {
        final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: params.email,
          password: params.password,
        );

        final userDoc = await firestore
            .collection('users')
            .doc(credential.user?.uid)
            .get();

        if (userDoc.exists) {
          return UserModel.fromFirestore(userDoc);
        }

        throw Exception('User document not found');
      });

  Stream<UserModel?> authStateChanges() {
    return firebaseAuth.authStateChanges().asyncExpand((fbUser) {
      if (fbUser == null) return Stream<UserModel?>.value(null);

      return firestore
          .collection('users')
          .doc(fbUser.uid)
          .snapshots()
          .map(
            (doc) => doc.exists
                ? UserModel.fromJson({...doc.data()!, 'uid': doc.id})
                : null,
          );
    });
  }
}

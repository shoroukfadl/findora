import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/core/network/check_network.dart';
import 'package:findora/core/network/custom_either.dart';
import 'package:findora/core/network/network.dart';
import 'package:findora/featured/settings/data/dataSource/remote/settings_remote_data_source.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingsRemoteDataSourceImpl
    with RemoteGuard
    implements SettingsRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  @override
  final ConnectivityService connectivityService;

  SettingsRemoteDataSourceImpl(
    this.firebaseAuth,
    this.firestore, {
    ConnectivityService? connectivityService,
  }) : connectivityService =
            connectivityService ?? ConnectivityService.instance;

  @override
  Future<Either<RequestFailure, void>> logout() => guard(() async {
        await firebaseAuth.signOut();
      });
}

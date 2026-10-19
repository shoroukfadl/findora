import 'package:findora/core/network/custom_either.dart';
import 'package:findora/utilities/requests/request_status.dart';

abstract class SettingsRemoteDataSource {
  Future<Either<RequestFailure, void>> logout();
}

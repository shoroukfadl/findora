import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/settings/data/dataSource/remote/settings_remote_data_source.dart';
import 'package:findora/featured/settings/domain/repository/settings_repo.dart';
import 'package:findora/utilities/requests/request_status.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsRemoteDataSource remoteDataSource;

  SettingsRepositoryImpl({
    required this.remoteDataSource,
  });
  Future<Either<RequestFailure, void>> logout() async {
    return remoteDataSource.logout();
  }
}

import 'package:findora/core/network/custom_either.dart';
import 'package:findora/featured/settings/domain/repository/settings_repo.dart';
import 'package:findora/utilities/requests/request_status.dart';

class LogoutUsecase {
  final SettingsRepository repository;

  LogoutUsecase({required this.repository});

  Future<Either<RequestFailure, void>> call() async {
    return await repository.logout();
  }
}

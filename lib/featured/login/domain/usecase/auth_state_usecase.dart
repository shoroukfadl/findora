import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/login/domain/repository/login_repo.dart';

class AuthStateUsecase {
  final LoginRepository repository;

  AuthStateUsecase({required this.repository});

  Stream<UserEntity?> call() {
    return repository.authStateChanges();
  }
}

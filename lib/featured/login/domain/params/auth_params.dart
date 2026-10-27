import 'package:equatable/equatable.dart';

class LoginParams extends Equatable {
  final String email;
  final String password;
  const LoginParams({required this.email, required this.password});
  @override
  List<Object?> get props => [email, password];
}

/// Complete profile / edit profile. [photoPath] is a local file path.
class UpdateProfileParams extends Equatable {
  final String? name;
  final String? photoPath;
  const UpdateProfileParams({this.name, this.photoPath});
  @override
  List<Object?> get props => [name, photoPath];
}

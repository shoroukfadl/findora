import 'package:equatable/equatable.dart';

class RegisterParams extends Equatable {
  final String email;
  final String name;
  final String password;
  const RegisterParams({
    required this.email,
    required this.name,
    required this.password,
  });
  @override
  List<Object?> get props => [name, email, password];
}

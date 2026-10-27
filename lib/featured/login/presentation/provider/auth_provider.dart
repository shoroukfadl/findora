import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/featured/login/presentation/provider/login_di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateProvider = StreamProvider<UserEntity?>((ref) {
  return ref.watch(loginRepositoryProvider).authStateChanges();
});

// class LogoutNotifier extends Notifier<RequestStatus> {
//   @override
//   RequestStatus build() => const RequestInitial();
//
//   Future<void> logout() async {
//     state = const RequestLoading();
//     final result = await ref.read(logoutUsecaseProvider).call();
//     state = result.fold(
//           (failure) => RequestFailure(failure.message),
//           (_) => const RequestSuccess(),
//     );
//   }
// }
//
// final logoutProvider = NotifierProvider<LogoutNotifier, RequestStatus>(
//   LogoutNotifier.new,
// );

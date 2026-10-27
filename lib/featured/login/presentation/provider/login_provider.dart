import 'package:findora/featured/login/domain/params/auth_params.dart';
import 'package:findora/featured/login/presentation/provider/login_di.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends Notifier<RequestStatus> {
  @override
  RequestStatus build() => const RequestInitial();

  Future<void> login(LoginParams params) async {
    state = const RequestLoading();
    final result = await ref.read(loginUsecaseProvider).call(params);
    state = result.fold(
      (failure) => RequestFailure(failure.message),
      (_) => const RequestSuccess(),
    );
  }

  void reset() => state = const RequestInitial();
}

final loginProvider = NotifierProvider<LoginNotifier, RequestStatus>(
  LoginNotifier.new,
);

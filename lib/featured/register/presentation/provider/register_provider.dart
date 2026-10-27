import 'package:findora/featured/register/domain/params/auth_params.dart';
import 'package:findora/featured/register/presentation/provider/register_di.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterNotifier extends Notifier<RequestStatus> {
  @override
  RequestStatus build() => const RequestInitial();

  Future<void> register(RegisterParams params) async {
    state = const RequestLoading();
    final result = await ref.read(registerUsecaseProvider).call(params);
    state = result.fold(
      (failure) => RequestFailure(failure.message),
      (_) => const RequestSuccess(),
    );
  }

  void reset() => state = const RequestInitial();
}

final registerProvider = NotifierProvider<RegisterNotifier, RequestStatus>(
  RegisterNotifier.new,
);

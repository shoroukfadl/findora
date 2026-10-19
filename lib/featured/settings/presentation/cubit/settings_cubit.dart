import 'package:findora/featured/settings/domain/usecase/settings_usecase.dart';
import 'package:findora/featured/settings/presentation/cubit/settings_state.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final LogoutUsecase logoutUsecase;

  SettingsCubit({required this.logoutUsecase}) : super(const SettingsState());

  Future<void> logout() async {
    emit(state.copyWithMethod(logoutStatus: const RequestLoading()));

    final result = await logoutUsecase.call();

    if (isClosed) return;

    result.fold(
      (failure) => emit(state.copyWithMethod(
        logoutStatus: RequestFailure(failure.message),
      )),
      (re) => emit(state.copyWithMethod(
        logoutStatus: const RequestSuccess(),
      )),
    );
  }

  void resetState() => emit(const SettingsState());
}

import 'package:equatable/equatable.dart';
import 'package:findora/utilities/requests/request_status.dart';

class SettingsState extends Equatable {
  final RequestStatus logoutStatus;
  const SettingsState({
    this.logoutStatus = const RequestInitial(),
  });

  SettingsState copyWithMethod({
    RequestStatus? logoutStatus,
  }) =>
      SettingsState(
        logoutStatus: logoutStatus ?? this.logoutStatus,
      );

  @override
  List<Object?> get props => [
        logoutStatus,
      ];
}

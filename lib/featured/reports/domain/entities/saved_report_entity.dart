import 'package:equatable/equatable.dart';

/// users/{uid}/saved/{reportId}
class SavedReportEntity extends Equatable {
  final String reportId;
  final DateTime? savedAt;

  const SavedReportEntity({
    required this.reportId,
    this.savedAt,
  });

  @override
  List<Object?> get props => [reportId, savedAt];
}

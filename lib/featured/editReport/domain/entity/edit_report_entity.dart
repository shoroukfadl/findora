import 'package:findora/utilities/constants/enums.dart';

class EditReportEntity {
  final String id;
  final String title;
  final String description;
  final ReportStatus status;

  EditReportEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
  });

  EditReportEntity copyWith({
    String? id,
    String? title,
    String? description,
    ReportStatus? status,
  }) {
    return EditReportEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'status': status.name,
    };
  }
}

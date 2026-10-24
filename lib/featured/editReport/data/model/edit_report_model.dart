import 'package:findora/featured/editReport/domain/entity/edit_report_entity.dart';
import 'package:findora/utilities/constants/enums.dart';

class EditReportModel {
  final String id;
  final String title;
  final String description;
  final ReportStatus status;

  EditReportModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
  });

  factory EditReportModel.fromJson(Map<String, dynamic> json) {
    return EditReportModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      status: ReportStatus.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => ReportStatus.open,
      ),
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

  EditReportEntity toEntity() {
    return EditReportEntity(
      id: id,
      title: title,
      description: description,
      status: status,
    );
  }

  factory EditReportModel.fromEntity(EditReportEntity entity) {
    return EditReportModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      status: entity.status,
    );
  }

  EditReportModel copyWith({
    String? id,
    String? title,
    String? description,
    ReportStatus? status,
  }) {
    return EditReportModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
    );
  }
}

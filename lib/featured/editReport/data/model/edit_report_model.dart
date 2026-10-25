import 'package:findora/featured/editReport/domain/entity/edit_report_entity.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_report_model.freezed.dart';
part 'edit_report_model.g.dart';

@freezed
abstract class EditReportModel with _$EditReportModel {
  const EditReportModel._();
  const factory EditReportModel({
    required String id,
    required String title,
    required String description,
    required ReportStatus status,
  }) = _EditReportModel;

  factory EditReportModel.fromJson(Map<String, dynamic> json) =>
      _$EditReportModelFromJson(json);

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
}

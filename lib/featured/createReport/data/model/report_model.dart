import 'package:findora/featured/createReport/domain/entity/report_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

@freezed
abstract class ReportModel with _$ReportModel {
  const ReportModel._();
  const factory ReportModel({
    required String id,
    required bool isLost,
    required List<String> photos,
    required String title,
    required String category,
    required String description,
    required String address,
    DateTime? dateLost,
    required DateTime createdAt,
    String? userId,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);

  ReportEntity toEntity() {
    return ReportEntity(
      id: id,
      isLost: isLost,
      photos: photos,
      title: title,
      category: category,
      description: description,
      address: address,
      dateLost: dateLost,
      createdAt: createdAt,
      userId: userId,
    );
  }

  factory ReportModel.fromEntity(ReportEntity entity) {
    return ReportModel(
      id: entity.id,
      isLost: entity.isLost,
      photos: entity.photos,
      title: entity.title,
      category: entity.category,
      description: entity.description,
      address: entity.address,
      dateLost: entity.dateLost,
      createdAt: entity.createdAt,
      userId: entity.userId,
    );
  }
}

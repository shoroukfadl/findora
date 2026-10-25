// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditReportModel _$EditReportModelFromJson(Map<String, dynamic> json) =>
    _EditReportModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      status: $enumDecode(_$ReportStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$EditReportModelToJson(_EditReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': _$ReportStatusEnumMap[instance.status]!,
    };

const _$ReportStatusEnumMap = {
  ReportStatus.open: 'open',
  ReportStatus.matched: 'matched',
  ReportStatus.returned: 'returned',
  ReportStatus.closed: 'closed',
};

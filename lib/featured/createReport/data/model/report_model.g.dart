// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => _ReportModel(
  id: json['id'] as String,
  isLost: json['isLost'] as bool,
  photos: (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
  title: json['title'] as String,
  category: json['category'] as String,
  description: json['description'] as String,
  address: json['address'] as String,
  dateLost: json['dateLost'] == null
      ? null
      : DateTime.parse(json['dateLost'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$ReportModelToJson(_ReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isLost': instance.isLost,
      'photos': instance.photos,
      'title': instance.title,
      'category': instance.category,
      'description': instance.description,
      'address': instance.address,
      'dateLost': instance.dateLost?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
    };

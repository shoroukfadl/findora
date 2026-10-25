import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/featured/reports/data/models/geo_location_model.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';

@freezed
abstract class ReportModel with _$ReportModel {
  const ReportModel._();

  const factory ReportModel({
    required String id,
    required String ownerId,
    required String ownerName,
    String? ownerPhotoUrl,
    @Default(false) bool ownerVerified,
    required ReportType type,
    required String title,
    @Default(ReportCategory.other) ReportCategory category,
    @Default('') String description,
    @Default([]) List<String> imageUrls,
    required GeoLocationModel location,
    required DateTime eventDate,
    @Default(ReportStatus.open) ReportStatus status,
    String? verificationQuestion,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(0.0) double distanceKm,
    @Default(false) bool isSaved,
  }) = _ReportModel;

  factory ReportModel.fromMap(Map<String, dynamic> map, {required String id}) {
    return ReportModel(
      id: id,
      ownerId: map['ownerId'] as String? ?? '',
      ownerName: map['ownerName'] as String? ?? '',
      ownerPhotoUrl: map['ownerPhotoUrl'] as String?,
      ownerVerified: map['ownerVerified'] as bool? ?? false,
      type: enumFrom(ReportType.values, map['type'], ReportType.lost),
      title: map['title'] as String? ?? '',
      category: enumFrom(
        ReportCategory.values,
        map['category'],
        ReportCategory.other,
      ),
      description: map['description'] as String? ?? '',
      imageUrls: stringList(map['imageUrls']),
      location: GeoLocationModel.fromReportMap(map),
      eventDate: dateFrom(map['eventDate']) ?? DateTime.now(),
      status: enumFrom(ReportStatus.values, map['status'], ReportStatus.open),
      verificationQuestion: map['verificationQuestion'] as String?,
      createdAt: dateFrom(map['createdAt']),
      updatedAt: dateFrom(map['updatedAt']),
    );
  }

  factory ReportModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) => ReportModel.fromMap(doc.data() ?? const {}, id: doc.id);

  /// Client-only fields ([distanceKm], [isSaved]) are never written.
  Map<String, dynamic> toMap({bool isCreate = false}) => {
    'ownerId': ownerId,
    'ownerName': ownerName,
    'ownerPhotoUrl': ownerPhotoUrl,
    'ownerVerified': ownerVerified,
    'type': type.name,
    'title': title,
    'category': category.name,
    'description': description,
    'imageUrls': imageUrls,
    // ...GeoLocationModel.fromEntity(location).toReportMap(),
    'eventDate': tsFrom(eventDate),
    'status': status.name,
    'verificationQuestion': verificationQuestion,
    if (isCreate) 'createdAt': FieldValue.serverTimestamp(),
    'updatedAt': FieldValue.serverTimestamp(),
  };
}

/// Firestore: reports/{reportId}/private/contact (owner only)
@freezed
abstract class ReportPrivateModel with _$ReportPrivateModel {
  const ReportPrivateModel._();

  const factory ReportPrivateModel({
    required String reportId,
    required String verificationAnswerHash,
  }) = _ReportPrivateModel;

  factory ReportPrivateModel.fromMap(
    Map<String, dynamic> map, {
    required String reportId,
  }) => ReportPrivateModel(
    reportId: reportId,
    verificationAnswerHash: map['verificationAnswerHash'] as String? ?? '',
  );

  Map<String, dynamic> toMap() => {
    'verificationAnswerHash': verificationAnswerHash,
  };
}

import 'package:equatable/equatable.dart';
import 'package:findora/featured/reports/domain/entities/geo_location.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';

/// Report card (Home, Map, Saved, My reports) and Report details. [distanceKm] and [isSaved] are computed on the client, not stored.
class ReportEntity extends Equatable {
  final String id;
  final String ownerId;
  final String ownerName;
  final String? ownerPhotoUrl;
  final bool ownerVerified;
  final ReportType type;
  final String title;
  final ReportCategory category;
  final String description;
  final List<String> imageUrls;
  final GeoLocation location;
  final DateTime eventDate;
  final ReportStatus status;
  final String? verificationQuestion;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final double? distanceKm;
  final bool isSaved;

  const ReportEntity({
    required this.id,
    required this.ownerId,
    required this.ownerName,
    this.ownerPhotoUrl,
    this.ownerVerified = false,
    required this.type,
    required this.title,
    this.category = ReportCategory.other,
    this.description = '',
    this.imageUrls = const [],
    required this.location,
    required this.eventDate,
    this.status = ReportStatus.open,
    this.verificationQuestion,
    this.createdAt,
    this.updatedAt,
    this.distanceKm,
    this.isSaved = false,
  });

  String? get thumbnailUrl => imageUrls.isEmpty ? null : imageUrls.first;
  bool get isLost => type == ReportType.lost;
  bool get isOpen => status == ReportStatus.open;
  bool isOwnedBy(String uid) => ownerId == uid;

  ReportEntity copyWith({
    String? id,
    String? ownerId,
    String? ownerName,
    String? ownerPhotoUrl,
    bool? ownerVerified,
    ReportType? type,
    String? title,
    ReportCategory? category,
    String? description,
    List<String>? imageUrls,
    GeoLocation? location,
    DateTime? eventDate,
    ReportStatus? status,
    String? verificationQuestion,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? distanceKm,
    bool? isSaved,
  }) {
    return ReportEntity(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      ownerName: ownerName ?? this.ownerName,
      ownerPhotoUrl: ownerPhotoUrl ?? this.ownerPhotoUrl,
      ownerVerified: ownerVerified ?? this.ownerVerified,
      type: type ?? this.type,
      title: title ?? this.title,
      category: category ?? this.category,
      description: description ?? this.description,
      imageUrls: imageUrls ?? this.imageUrls,
      location: location ?? this.location,
      eventDate: eventDate ?? this.eventDate,
      status: status ?? this.status,
      verificationQuestion: verificationQuestion ?? this.verificationQuestion,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      distanceKm: distanceKm ?? this.distanceKm,
      isSaved: isSaved ?? this.isSaved,
    );
  }

  @override
  List<Object?> get props => [
    id,
    ownerId,
    ownerName,
    ownerPhotoUrl,
    ownerVerified,
    type,
    title,
    category,
    description,
    imageUrls,
    location,
    eventDate,
    status,
    verificationQuestion,
    createdAt,
    updatedAt,
    distanceKm,
    isSaved,
  ];
}

/// Owner-only data: reports/{id}/private/contact. Never expose to other users.
class ReportPrivateEntity extends Equatable {
  final String reportId;
  final String verificationAnswerHash;

  const ReportPrivateEntity({
    required this.reportId,
    required this.verificationAnswerHash,
  });

  ReportPrivateEntity copyWith({
    String? reportId,
    String? verificationAnswerHash,
  }) {
    return ReportPrivateEntity(
      reportId: reportId ?? this.reportId,
      verificationAnswerHash:
          verificationAnswerHash ?? this.verificationAnswerHash,
    );
  }

  @override
  List<Object?> get props => [reportId, verificationAnswerHash];
}

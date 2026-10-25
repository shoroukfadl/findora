import 'package:equatable/equatable.dart';
import 'package:findora/featured/reports/domain/entities/geo_location.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';

class CreateReportParams extends Equatable {
  final ReportType type;
  final String title;
  final ReportCategory category;
  final String description;
  final List<String> imagePaths;
  final GeoLocation? location;
  final DateTime? eventDate;
  final String? verificationQuestion;
  final String? verificationAnswer;

  const CreateReportParams({
    this.type = ReportType.lost,
    this.title = '',
    this.category = ReportCategory.other,
    this.description = '',
    this.imagePaths = const [],
    this.location,
    this.eventDate,
    this.verificationQuestion,
    this.verificationAnswer,
  });

  bool get isStep1Valid => title.trim().isNotEmpty && imagePaths.isNotEmpty;
  bool get isStep2Valid => location != null && eventDate != null;

  CreateReportParams copyWith({
    ReportType? type,
    String? title,
    ReportCategory? category,
    String? description,
    List<String>? imagePaths,
    GeoLocation? location,
    DateTime? eventDate,
    String? verificationQuestion,
    String? verificationAnswer,
  }) {
    return CreateReportParams(
      type: type ?? this.type,
      title: title ?? this.title,
      category: category ?? this.category,
      description: description ?? this.description,
      imagePaths: imagePaths ?? this.imagePaths,
      location: location ?? this.location,
      eventDate: eventDate ?? this.eventDate,
      verificationQuestion: verificationQuestion ?? this.verificationQuestion,
      verificationAnswer: verificationAnswer ?? this.verificationAnswer,
    );
  }

  @override
  List<Object?> get props => [
    type,
    title,
    category,
    description,
    imagePaths,
    location,
    eventDate,
    verificationQuestion,
    verificationAnswer,
  ];
}

/// Edit report screen.
class UpdateReportParams extends Equatable {
  final String reportId;
  final String? title;
  final String? description;
  final ReportStatus? status;

  const UpdateReportParams({
    required this.reportId,
    this.title,
    this.description,
    this.status,
  });

  @override
  List<Object?> get props => [reportId, title, description, status];
}

/// Verify ownership screen: "Send claim".
class ClaimParams extends Equatable {
  final String reportId;
  final String answer;
  final String? proofImagePath;

  const ClaimParams({
    required this.reportId,
    required this.answer,
    this.proofImagePath,
  });

  @override
  List<Object?> get props => [reportId, answer, proofImagePath];
}

/// Review claim screen: Approve / Reject.
class ReviewClaimParams extends Equatable {
  final String claimId;
  final bool approve;

  const ReviewClaimParams({required this.claimId, required this.approve});

  @override
  List<Object?> get props => [claimId, approve];
}

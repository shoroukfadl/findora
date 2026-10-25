import 'package:equatable/equatable.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';

class ClaimEntity extends Equatable {
  final String id;
  final String reportId;
  final String reportTitle;
  final String reportOwnerId;
  final String claimantId;
  final String claimantName;
  final String? claimantPhotoUrl;
  final bool claimantVerified;
  final String answer;
  final String? proofImageUrl;
  final ClaimStatus status;
  final String? chatId;
  final DateTime? createdAt;
  final DateTime? decidedAt;

  const ClaimEntity({
    required this.id,
    required this.reportId,
    this.reportTitle = '',
    required this.reportOwnerId,
    required this.claimantId,
    required this.claimantName,
    this.claimantPhotoUrl,
    this.claimantVerified = false,
    required this.answer,
    this.proofImageUrl,
    this.status = ClaimStatus.pending,
    this.chatId,
    this.createdAt,
    this.decidedAt,
  });

  ClaimEntity copyWith({
    String? id,
    String? reportId,
    String? reportTitle,
    String? reportOwnerId,
    String? claimantId,
    String? claimantName,
    String? claimantPhotoUrl,
    bool? claimantVerified,
    String? answer,
    String? proofImageUrl,
    ClaimStatus? status,
    String? chatId,
    DateTime? createdAt,
    DateTime? decidedAt,
  }) {
    return ClaimEntity(
      id: id ?? this.id,
      reportId: reportId ?? this.reportId,
      reportTitle: reportTitle ?? this.reportTitle,
      reportOwnerId: reportOwnerId ?? this.reportOwnerId,
      claimantId: claimantId ?? this.claimantId,
      claimantName: claimantName ?? this.claimantName,
      claimantPhotoUrl: claimantPhotoUrl ?? this.claimantPhotoUrl,
      claimantVerified: claimantVerified ?? this.claimantVerified,
      answer: answer ?? this.answer,
      proofImageUrl: proofImageUrl ?? this.proofImageUrl,
      status: status ?? this.status,
      chatId: chatId ?? this.chatId,
      createdAt: createdAt ?? this.createdAt,
      decidedAt: decidedAt ?? this.decidedAt,
    );
  }

  @override
  List<Object?> get props => [
    id,
    reportId,
    reportTitle,
    reportOwnerId,
    claimantId,
    claimantName,
    claimantPhotoUrl,
    claimantVerified,
    answer,
    proofImageUrl,
    status,
    chatId,
    createdAt,
    decidedAt,
  ];
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_model.freezed.dart';

@freezed
abstract class ClaimModel with _$ClaimModel {
  const ClaimModel._();

  const factory ClaimModel({
    required String id,
    required String reportId,
    String? reportTitle,
    required String reportOwnerId,
    required String claimantId,
    required String claimantName,
    String? claimantPhotoUrl,
    @Default(false) bool claimantVerified,
    required String answer,
    String? proofImageUrl,
    @Default(ClaimStatus.pending) ClaimStatus status,
    String? chatId,
    DateTime? createdAt,
    DateTime? decidedAt,
  }) = _ClaimModel;

  factory ClaimModel.fromMap(Map<String, dynamic> map, {required String id}) {
    return ClaimModel(
      id: id,
      reportId: map['reportId'] as String? ?? '',
      reportTitle: map['reportTitle'] as String? ?? '',
      reportOwnerId: map['reportOwnerId'] as String? ?? '',
      claimantId: map['claimantId'] as String? ?? '',
      claimantName: map['claimantName'] as String? ?? '',
      claimantPhotoUrl: map['claimantPhotoUrl'] as String?,
      claimantVerified: map['claimantVerified'] as bool? ?? false,
      answer: map['answer'] as String? ?? '',
      proofImageUrl: map['proofImageUrl'] as String?,
      status: enumFrom(ClaimStatus.values, map['status'], ClaimStatus.pending),
      chatId: map['chatId'] as String?,
      createdAt: dateFrom(map['createdAt']),
      decidedAt: dateFrom(map['decidedAt']),
    );
  }

  factory ClaimModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) => ClaimModel.fromMap(doc.data() ?? const {}, id: doc.id);

  Map<String, dynamic> toMap({bool isCreate = false}) => {
    'reportId': reportId,
    'reportTitle': reportTitle,
    'reportOwnerId': reportOwnerId,
    'claimantId': claimantId,
    'claimantName': claimantName,
    'claimantPhotoUrl': claimantPhotoUrl,
    'claimantVerified': claimantVerified,
    'answer': answer,
    'proofImageUrl': proofImageUrl,
    'status': status.name,
    'chatId': chatId,
    if (isCreate) 'createdAt': FieldValue.serverTimestamp(),
    'decidedAt': tsFrom(decidedAt),
  };
}

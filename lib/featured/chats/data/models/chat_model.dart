import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/featured/chats/domain/entities/chat_entity.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const ChatModel._();

  const factory ChatModel({
    required String id,
    required String reportId,
    required String reportTitle,
    String? reportImageUrl,
    @Default(ReportStatus.open) ReportStatus reportStatus,
    ClaimStatus? claimStatus,
    required ChatParticipant otherUser,
    String? lastMessage,
    DateTime? lastMessageAt,
    @Default(0) int unreadCount,
  }) = _ChatModel;

  /// [currentUid] is used to pick the "other" participant and unread count.
  factory ChatModel.fromMap(
    Map<String, dynamic> map, {
    required String id,
    required String currentUid,
  }) {
    final ids = stringList(map['participants']);
    final otherUid = ids.firstWhere((u) => u != currentUid, orElse: () => '');
    final info = (map['participantInfo'] as Map<String, dynamic>?) ?? const {};
    final other = (info[otherUid] as Map<String, dynamic>?) ?? const {};
    final unread = (map['unread'] as Map<String, dynamic>?) ?? const {};

    return ChatModel(
      id: id,
      reportId: map['reportId'] as String? ?? '',
      reportTitle: map['reportTitle'] as String? ?? '',
      reportImageUrl: map['reportImageUrl'] as String?,
      reportStatus: enumFrom(
        ReportStatus.values,
        map['reportStatus'],
        ReportStatus.open,
      ),
      claimStatus: enumFromOrNull(ClaimStatus.values, map['claimStatus']),
      otherUser: ChatParticipant(
        uid: otherUid,
        name: other['name'] as String? ?? '',
        photoUrl: other['photoUrl'] as String?,
      ),
      lastMessage: map['lastMessage'] as String?,
      lastMessageAt: dateFrom(map['lastMessageAt']),
      unreadCount: (unread[currentUid] as num?)?.toInt() ?? 0,
    );
  }

  factory ChatModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc, {
    required String currentUid,
  }) => ChatModel.fromMap(
    doc.data() ?? const {},
    id: doc.id,
    currentUid: currentUid,
  );

  /// Map used when a chat is created (after a claim is approved).
  static Map<String, dynamic> newChatMap({
    required String reportId,
    required String reportTitle,
    String? reportImageUrl,
    required ReportStatus reportStatus,
    required String uidA,
    required String nameA,
    String? photoA,
    required String uidB,
    required String nameB,
    String? photoB,
  }) => {
    'reportId': reportId,
    'reportTitle': reportTitle,
    'reportImageUrl': reportImageUrl,
    'reportStatus': reportStatus.name,
    'claimStatus': ClaimStatus.approved.name,
    'participants': [uidA, uidB],
    'participantInfo': {
      uidA: {'name': nameA, 'photoUrl': photoA},
      uidB: {'name': nameB, 'photoUrl': photoB},
    },
    'unread': {uidA: 0, uidB: 0},
    'lastMessage': null,
    'lastMessageAt': FieldValue.serverTimestamp(),
  };
}

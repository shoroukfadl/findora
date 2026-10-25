import 'package:equatable/equatable.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';

/// [isOnline] comes from WebSocket presence, not Firestore.
class ChatParticipant extends Equatable {
  final String uid;
  final String name;
  final String? photoUrl;
  final bool isOnline;

  const ChatParticipant({
    required this.uid,
    required this.name,
    this.photoUrl,
    this.isOnline = false,
  });

  ChatParticipant copyWith({
    String? uid,
    String? name,
    String? photoUrl,
    bool? isOnline,
  }) {
    return ChatParticipant(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
      isOnline: isOnline ?? this.isOnline,
    );
  }

  @override
  List<Object?> get props => [uid, name, photoUrl, isOnline];
}

/// Chats list row and the Chat screen header + report banner.
class ChatEntity extends Equatable {
  final String id;
  final String reportId;
  final String reportTitle;
  final String? reportImageUrl;
  final ReportStatus reportStatus;
  final ClaimStatus? claimStatus;
  final ChatParticipant otherUser;
  final String? lastMessage;
  final DateTime? lastMessageAt;
  final int unreadCount;

  const ChatEntity({
    required this.id,
    required this.reportId,
    required this.reportTitle,
    this.reportImageUrl,
    this.reportStatus = ReportStatus.open,
    this.claimStatus,
    required this.otherUser,
    this.lastMessage,
    this.lastMessageAt,
    this.unreadCount = 0,
  });

  ChatEntity copyWith({
    String? id,
    String? reportId,
    String? reportTitle,
    String? reportImageUrl,
    ReportStatus? reportStatus,
    ClaimStatus? claimStatus,
    ChatParticipant? otherUser,
    String? lastMessage,
    DateTime? lastMessageAt,
    int? unreadCount,
  }) {
    return ChatEntity(
      id: id ?? this.id,
      reportId: reportId ?? this.reportId,
      reportTitle: reportTitle ?? this.reportTitle,
      reportImageUrl: reportImageUrl ?? this.reportImageUrl,
      reportStatus: reportStatus ?? this.reportStatus,
      claimStatus: claimStatus ?? this.claimStatus,
      otherUser: otherUser ?? this.otherUser,
      lastMessage: lastMessage ?? this.lastMessage,
      lastMessageAt: lastMessageAt ?? this.lastMessageAt,
      unreadCount: unreadCount ?? this.unreadCount,
    );
  }

  @override
  List<Object?> get props => [
        id,
        reportId,
        reportTitle,
        reportImageUrl,
        reportStatus,
        claimStatus,
        otherUser,
        lastMessage,
        lastMessageAt,
        unreadCount
      ];
}

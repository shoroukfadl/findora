import 'package:equatable/equatable.dart';
import 'package:findora/featured/chats/domain/entities/chat_enums.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';

/// Chat bubble. For system messages (e.g. "Claim approved") [systemEvent] holds a code like claimApproved so the UI can localize it.
class MessageEntity extends Equatable {
  final String id;
  final String chatId;
  final String senderId;
  final MessageType type;
  final String text;
  final String? imageUrl;
  final String? systemEvent;
  final DateTime? createdAt;
  final List<String> seenBy;
  final MessageDeliveryStatus deliveryStatus;
  final String? localId;

  const MessageEntity({
    required this.id,
    required this.chatId,
    required this.senderId,
    this.type = MessageType.text,
    this.text = '',
    this.imageUrl,
    this.systemEvent,
    this.createdAt,
    this.seenBy = const [],
    this.deliveryStatus = MessageDeliveryStatus.sent,
    this.localId,
  });

  bool isMine(String uid) => senderId == uid;
  bool isSeenBy(String uid) => seenBy.contains(uid);
  bool get isSystem => type == MessageType.system;

  MessageEntity copyWith({
    String? id,
    String? chatId,
    String? senderId,
    MessageType? type,
    String? text,
    String? imageUrl,
    String? systemEvent,
    DateTime? createdAt,
    List<String>? seenBy,
    MessageDeliveryStatus? deliveryStatus,
    String? localId,
  }) {
    return MessageEntity(
      id: id ?? this.id,
      chatId: chatId ?? this.chatId,
      senderId: senderId ?? this.senderId,
      type: type ?? this.type,
      text: text ?? this.text,
      imageUrl: imageUrl ?? this.imageUrl,
      systemEvent: systemEvent ?? this.systemEvent,
      createdAt: createdAt ?? this.createdAt,
      seenBy: seenBy ?? this.seenBy,
      deliveryStatus: deliveryStatus ?? this.deliveryStatus,
      localId: localId ?? this.localId,
    );
  }

  @override
  List<Object?> get props => [
        id,
        chatId,
        senderId,
        type,
        text,
        imageUrl,
        systemEvent,
        createdAt,
        seenBy,
        deliveryStatus,
        localId
      ];
}

/// WebSocket: "typing..." indicator.
class TypingEvent extends Equatable {
  final String chatId;
  final String userId;
  final bool isTyping;

  const TypingEvent({
    required this.chatId,
    required this.userId,
    required this.isTyping,
  });

  @override
  List<Object?> get props => [chatId, userId, isTyping];
}

/// WebSocket: live report status change.
class ReportStatusEvent extends Equatable {
  final String reportId;
  final ReportStatus status;

  const ReportStatusEvent({
    required this.reportId,
    required this.status,
  });

  @override
  List<Object?> get props => [reportId, status];
}

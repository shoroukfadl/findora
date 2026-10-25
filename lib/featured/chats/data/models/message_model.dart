import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/featured/chats/domain/entities/chat_enums.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
abstract class MessageModel with _$MessageModel {
  const MessageModel._();

  const factory MessageModel({
    required String id,
    required String chatId,
    required String senderId,
    @Default(MessageType.text) MessageType type,
    @Default('') String text,
    String? imageUrl,
    String? systemEvent,
    DateTime? createdAt,
    @Default([]) List<String> seenBy,
    String? localId,
  }) = _MessageModel;

  factory MessageModel.fromMap(
    Map<String, dynamic> map, {
    required String id,
    required String chatId,
  }) {
    return MessageModel(
      id: id,
      chatId: chatId,
      senderId: map['senderId'] as String? ?? '',
      type: enumFrom(MessageType.values, map['type'], MessageType.text),
      text: map['text'] as String? ?? '',
      imageUrl: map['imageUrl'] as String?,
      systemEvent: map['systemEvent'] as String?,
      createdAt: dateFrom(map['createdAt']),
      seenBy: stringList(map['seenBy']),
    );
  }

  factory MessageModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc, {
    required String chatId,
  }) =>
      MessageModel.fromMap(doc.data() ?? const {}, id: doc.id, chatId: chatId);

  /// JSON from the WebSocket server.
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      MessageModel.fromMap(
        json,
        id: json['id'] as String? ?? '',
        chatId: json['chatId'] as String? ?? '',
      );

  Map<String, dynamic> toMap() => {
    'senderId': senderId,
    'type': type.name,
    'text': text,
    'imageUrl': imageUrl,
    'systemEvent': systemEvent,
    'seenBy': seenBy,
    'createdAt': FieldValue.serverTimestamp(),
  };

  /// Payload sent through the WebSocket (`message:send`).
  Map<String, dynamic> toJson() => {
    'chatId': chatId,
    'type': type.name,
    'text': text,
    'imageUrl': imageUrl,
    'localId': localId,
  };
}

@freezed
abstract class TypingEventModel with _$TypingEventModel {
  const factory TypingEventModel({
    required String chatId,
    required String userId,
    required bool isTyping,
  }) = _TypingEventModel;

  factory TypingEventModel.fromJson(Map<String, dynamic> json) =>
      _$TypingEventModelFromJson(json);

  Map<String, dynamic> toJson() => {
    'chatId': chatId,
    'userId': userId,
    'isTyping': isTyping,
  };
}

@freezed
abstract class ReportStatusEventModel with _$ReportStatusEventModel {
  const factory ReportStatusEventModel({
    required String reportId,
    required ReportStatus status,
  }) = _ReportStatusEventModel;

  factory ReportStatusEventModel.fromJson(Map<String, dynamic> json) =>
      _$ReportStatusEventModelFromJson(json);
}

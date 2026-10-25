// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      id: json['id'] as String,
      chatId: json['chatId'] as String,
      senderId: json['senderId'] as String,
      type:
          $enumDecodeNullable(_$MessageTypeEnumMap, json['type']) ??
          MessageType.text,
      text: json['text'] as String? ?? '',
      imageUrl: json['imageUrl'] as String?,
      systemEvent: json['systemEvent'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      seenBy:
          (json['seenBy'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      localId: json['localId'] as String?,
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'senderId': instance.senderId,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'text': instance.text,
      'imageUrl': instance.imageUrl,
      'systemEvent': instance.systemEvent,
      'createdAt': instance.createdAt?.toIso8601String(),
      'seenBy': instance.seenBy,
      'localId': instance.localId,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.system: 'system',
};

_TypingEventModel _$TypingEventModelFromJson(Map<String, dynamic> json) =>
    _TypingEventModel(
      chatId: json['chatId'] as String,
      userId: json['userId'] as String,
      isTyping: json['isTyping'] as bool,
    );

Map<String, dynamic> _$TypingEventModelToJson(_TypingEventModel instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'userId': instance.userId,
      'isTyping': instance.isTyping,
    };

_ReportStatusEventModel _$ReportStatusEventModelFromJson(
  Map<String, dynamic> json,
) => _ReportStatusEventModel(
  reportId: json['reportId'] as String,
  status: $enumDecode(_$ReportStatusEnumMap, json['status']),
);

Map<String, dynamic> _$ReportStatusEventModelToJson(
  _ReportStatusEventModel instance,
) => <String, dynamic>{
  'reportId': instance.reportId,
  'status': _$ReportStatusEnumMap[instance.status]!,
};

const _$ReportStatusEnumMap = {
  ReportStatus.open: 'open',
  ReportStatus.matched: 'matched',
  ReportStatus.returned: 'returned',
  ReportStatus.closed: 'closed',
};

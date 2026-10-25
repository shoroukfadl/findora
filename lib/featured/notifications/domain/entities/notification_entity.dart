import 'package:equatable/equatable.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';

enum NotificationType { newClaim, newMessage, statusChanged, possibleMatch }

/// Notifications screen row. Texts are built in the UI from [type] + params so they can be localized. Tap target: newClaim > Review claim, newMessage > Chat, others > Report details.
class AppNotificationEntity extends Equatable {
  final String id;
  final NotificationType type;
  final bool isRead;
  final DateTime? createdAt;
  final String? actorName;
  final String? itemTitle;
  final String? reportId;
  final String? chatId;
  final String? claimId;
  final ReportStatus? newStatus;

  const AppNotificationEntity({
    required this.id,
    required this.type,
    this.isRead = false,
    this.createdAt,
    this.actorName,
    this.itemTitle,
    this.reportId,
    this.chatId,
    this.claimId,
    this.newStatus,
  });

  AppNotificationEntity copyWith({
    String? id,
    NotificationType? type,
    bool? isRead,
    DateTime? createdAt,
    String? actorName,
    String? itemTitle,
    String? reportId,
    String? chatId,
    String? claimId,
    ReportStatus? newStatus,
  }) {
    return AppNotificationEntity(
      id: id ?? this.id,
      type: type ?? this.type,
      isRead: isRead ?? this.isRead,
      createdAt: createdAt ?? this.createdAt,
      actorName: actorName ?? this.actorName,
      itemTitle: itemTitle ?? this.itemTitle,
      reportId: reportId ?? this.reportId,
      chatId: chatId ?? this.chatId,
      claimId: claimId ?? this.claimId,
      newStatus: newStatus ?? this.newStatus,
    );
  }

  @override
  List<Object?> get props => [
    id,
    type,
    isRead,
    createdAt,
    actorName,
    itemTitle,
    reportId,
    chatId,
    claimId,
    newStatus,
  ];
}

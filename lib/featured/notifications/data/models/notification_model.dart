import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/featured/notifications/domain/entities/notification_entity.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

@freezed
abstract class AppNotificationModel with _$AppNotificationModel {
  const AppNotificationModel._();

  const factory AppNotificationModel({
    required String id,
    required NotificationType type,
    @Default(false) bool isRead,
    DateTime? createdAt,
    String? actorName,
    String? itemTitle,
    String? reportId,
    String? chatId,
    String? claimId,
    ReportStatus? newStatus,
  }) = _AppNotificationModel;

  factory AppNotificationModel.fromMap(
    Map<String, dynamic> map, {
    required String id,
  }) {
    return AppNotificationModel(
      id: id,
      type: enumFrom(
        NotificationType.values,
        map['type'],
        NotificationType.statusChanged,
      ),
      isRead: map['isRead'] as bool? ?? false,
      createdAt: dateFrom(map['createdAt']),
      actorName: map['actorName'] as String?,
      itemTitle: map['itemTitle'] as String?,
      reportId: map['reportId'] as String?,
      chatId: map['chatId'] as String?,
      claimId: map['claimId'] as String?,
      newStatus: enumFromOrNull(ReportStatus.values, map['newStatus']),
    );
  }

  factory AppNotificationModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) => AppNotificationModel.fromMap(doc.data() ?? const {}, id: doc.id);

  /// FCM data payload (tap on a system notification).
  factory AppNotificationModel.fromFcmData(Map<String, dynamic> data) =>
      AppNotificationModel.fromMap(data, id: data['id'] as String? ?? '');
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/featured/login/domain/entities/user_entity.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
abstract class NotificationPrefsModel with _$NotificationPrefsModel {
  const NotificationPrefsModel._();

  const factory NotificationPrefsModel({
    @Default(true) bool messages,
    @Default(true) bool claimUpdates,
    @Default(false) bool nearbyReports,
  }) = _NotificationPrefsModel;

  factory NotificationPrefsModel.fromMap(Map<String, dynamic>? map) {
    if (map == null) return const NotificationPrefsModel();
    return NotificationPrefsModel(
      messages: map['messages'] as bool? ?? true,
      claimUpdates: map['claimUpdates'] as bool? ?? true,
      nearbyReports: map['nearbyReports'] as bool? ?? false,
    );
  }

  factory NotificationPrefsModel.fromEntity(NotificationPrefs e) =>
      NotificationPrefsModel(
        messages: e.messages,
        claimUpdates: e.claimUpdates,
        nearbyReports: e.nearbyReports,
      );

  NotificationPrefs toEntity() => NotificationPrefs(
    messages: messages,
    claimUpdates: claimUpdates,
    nearbyReports: nearbyReports,
  );

  Map<String, dynamic> toMap() => {
    'messages': messages,
    'claimUpdates': claimUpdates,
    'nearbyReports': nearbyReports,
  };
}

/// Firestore: users/{uid}
@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String uid,
    required String name,
    required String email,
    String? photoUrl,
    @Default(false) bool isEmailVerified,
    DateTime? createdAt,
    required NotificationPrefsModel notificationPrefs,
  }) = _UserModel;

  factory UserModel.fromMap(
    Map<String, dynamic> map, {
    required String uid,
    bool isEmailVerified = false,
  }) {
    return UserModel(
      uid: uid,
      name: map['name'] as String? ?? '',
      email: map['email'] as String? ?? '',
      photoUrl: map['photoUrl'] as String?,
      isEmailVerified: isEmailVerified,
      createdAt: dateFrom(map['createdAt']),
      notificationPrefs: NotificationPrefsModel.fromMap(
        map['notificationPrefs'] as Map<String, dynamic>?,
      ),
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] as String? ?? '',
      name: map['name'] as String? ?? '',
      email: map['email'] as String? ?? '',
      photoUrl: map['photoUrl'] as String?,
      isEmailVerified: map['isEmailVerified'] as bool? ?? false,
      createdAt: dateFrom(map['createdAt']),
      notificationPrefs: NotificationPrefsModel.fromMap(
        map['notificationPrefs'] as Map<String, dynamic>?,
      ),
    );
  }

  factory UserModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc, {
    bool isEmailVerified = false,
  }) => UserModel.fromMap(
    doc.data() ?? const {},
    uid: doc.id,
    isEmailVerified: isEmailVerified,
  );

  Map<String, dynamic> toMap({bool isCreate = false}) => {
    'name': name,
    'email': email,
    'photoUrl': photoUrl,
    'notificationPrefs': notificationPrefs.toMap(),
    if (isCreate) 'createdAt': FieldValue.serverTimestamp(),
  };

  UserEntity toEntity() => UserEntity(
    photoUrl: photoUrl,
    notificationPrefs: notificationPrefs.toEntity(),
    uid: uid,
    name: name,
    email: email,
  );
}

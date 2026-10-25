import 'package:equatable/equatable.dart';

/// Settings screen toggles.
class NotificationPrefs extends Equatable {
  final bool messages;
  final bool claimUpdates;
  final bool nearbyReports;

  const NotificationPrefs({
    this.messages = true,
    this.claimUpdates = true,
    this.nearbyReports = false,
  });

  NotificationPrefs copyWith({
    bool? messages,
    bool? claimUpdates,
    bool? nearbyReports,
  }) {
    return NotificationPrefs(
      messages: messages ?? this.messages,
      claimUpdates: claimUpdates ?? this.claimUpdates,
      nearbyReports: nearbyReports ?? this.nearbyReports,
    );
  }

  @override
  List<Object?> get props => [messages, claimUpdates, nearbyReports];
}

/// Signed-in user (Login, Register, Complete profile, Profile, Settings).
class UserEntity extends Equatable {
  final String uid;
  final String name;
  final String email;
  final String? photoUrl;
  final bool isEmailVerified;
  final DateTime? createdAt;
  final NotificationPrefs notificationPrefs;

  const UserEntity({
    required this.uid,
    required this.name,
    required this.email,
    this.photoUrl,
    this.isEmailVerified = false,
    this.createdAt,
    this.notificationPrefs = const NotificationPrefs(),
  });

  UserEntity copyWith({
    String? uid,
    String? name,
    String? email,
    String? photoUrl,
    bool? isEmailVerified,
    DateTime? createdAt,
    NotificationPrefs? notificationPrefs,
  }) {
    return UserEntity(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      createdAt: createdAt ?? this.createdAt,
      notificationPrefs: notificationPrefs ?? this.notificationPrefs,
    );
  }

  @override
  List<Object?> get props => [uid, name, email, photoUrl, isEmailVerified, createdAt, notificationPrefs];
}

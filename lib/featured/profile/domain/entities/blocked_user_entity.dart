import 'package:equatable/equatable.dart';

/// Blocked users screen. Firestore: users/{uid}/blocked/{blockedUid}
class BlockedUserEntity extends Equatable {
  final String uid;
  final String name;
  final String? photoUrl;
  final DateTime? blockedAt;

  const BlockedUserEntity({
    required this.uid,
    required this.name,
    this.photoUrl,
    this.blockedAt,
  });

  @override
  List<Object?> get props => [uid, name, photoUrl, blockedAt];
}

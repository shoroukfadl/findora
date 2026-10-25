import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocked_user_model.freezed.dart';

@freezed
abstract class BlockedUserModel with _$BlockedUserModel {
  const BlockedUserModel._();

  const factory BlockedUserModel({
    required String uid,
    required String name,
    String? photoUrl,
    DateTime? blockedAt,
  }) = _BlockedUserModel;

  factory BlockedUserModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final map = doc.data() ?? const {};
    return BlockedUserModel(
      uid: doc.id,
      name: map['name'] as String? ?? '',
      photoUrl: map['photoUrl'] as String?,
      blockedAt: dateFrom(map['blockedAt']),
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'photoUrl': photoUrl,
    'blockedAt': FieldValue.serverTimestamp(),
  };
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatModel {

 String get id; String get reportId; String get reportTitle; String? get reportImageUrl; ReportStatus get reportStatus; ClaimStatus? get claimStatus; ChatParticipant get otherUser; String? get lastMessage; DateTime? get lastMessageAt; int get unreadCount;
/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatModelCopyWith<ChatModel> get copyWith => _$ChatModelCopyWithImpl<ChatModel>(this as ChatModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.reportTitle, reportTitle) || other.reportTitle == reportTitle)&&(identical(other.reportImageUrl, reportImageUrl) || other.reportImageUrl == reportImageUrl)&&(identical(other.reportStatus, reportStatus) || other.reportStatus == reportStatus)&&(identical(other.claimStatus, claimStatus) || other.claimStatus == claimStatus)&&(identical(other.otherUser, otherUser) || other.otherUser == otherUser)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,reportId,reportTitle,reportImageUrl,reportStatus,claimStatus,otherUser,lastMessage,lastMessageAt,unreadCount);

@override
String toString() {
  return 'ChatModel(id: $id, reportId: $reportId, reportTitle: $reportTitle, reportImageUrl: $reportImageUrl, reportStatus: $reportStatus, claimStatus: $claimStatus, otherUser: $otherUser, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $ChatModelCopyWith<$Res>  {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) _then) = _$ChatModelCopyWithImpl;
@useResult
$Res call({
 String id, String reportId, String reportTitle, String? reportImageUrl, ReportStatus reportStatus, ClaimStatus? claimStatus, ChatParticipant otherUser, String? lastMessage, DateTime? lastMessageAt, int unreadCount
});




}
/// @nodoc
class _$ChatModelCopyWithImpl<$Res>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._self, this._then);

  final ChatModel _self;
  final $Res Function(ChatModel) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reportId = null,Object? reportTitle = null,Object? reportImageUrl = freezed,Object? reportStatus = null,Object? claimStatus = freezed,Object? otherUser = null,Object? lastMessage = freezed,Object? lastMessageAt = freezed,Object? unreadCount = null,}) {
  return _then(ChatModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,reportTitle: null == reportTitle ? _self.reportTitle : reportTitle // ignore: cast_nullable_to_non_nullable
as String,reportImageUrl: freezed == reportImageUrl ? _self.reportImageUrl : reportImageUrl // ignore: cast_nullable_to_non_nullable
as String?,reportStatus: null == reportStatus ? _self.reportStatus : reportStatus // ignore: cast_nullable_to_non_nullable
as ReportStatus,claimStatus: freezed == claimStatus ? _self.claimStatus : claimStatus // ignore: cast_nullable_to_non_nullable
as ClaimStatus?,otherUser: null == otherUser ? _self.otherUser : otherUser // ignore: cast_nullable_to_non_nullable
as ChatParticipant,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatModel].
extension ChatModelPatterns on ChatModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String reportId,  String reportTitle,  String? reportImageUrl,  ReportStatus reportStatus,  ClaimStatus? claimStatus,  ChatParticipant otherUser,  String? lastMessage,  DateTime? lastMessageAt,  int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that.id,_that.reportId,_that.reportTitle,_that.reportImageUrl,_that.reportStatus,_that.claimStatus,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String reportId,  String reportTitle,  String? reportImageUrl,  ReportStatus reportStatus,  ClaimStatus? claimStatus,  ChatParticipant otherUser,  String? lastMessage,  DateTime? lastMessageAt,  int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _ChatModel():
return $default(_that.id,_that.reportId,_that.reportTitle,_that.reportImageUrl,_that.reportStatus,_that.claimStatus,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String reportId,  String reportTitle,  String? reportImageUrl,  ReportStatus reportStatus,  ClaimStatus? claimStatus,  ChatParticipant otherUser,  String? lastMessage,  DateTime? lastMessageAt,  int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that.id,_that.reportId,_that.reportTitle,_that.reportImageUrl,_that.reportStatus,_that.claimStatus,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc


class _ChatModel extends ChatModel {
  const _ChatModel({required this.id, required this.reportId, required this.reportTitle, this.reportImageUrl, this.reportStatus = ReportStatus.open, this.claimStatus, required this.otherUser, this.lastMessage, this.lastMessageAt, this.unreadCount = 0}): super._();
  

@override final  String id;
@override final  String reportId;
@override final  String reportTitle;
@override final  String? reportImageUrl;
@override@JsonKey() final  ReportStatus reportStatus;
@override final  ClaimStatus? claimStatus;
@override final  ChatParticipant otherUser;
@override final  String? lastMessage;
@override final  DateTime? lastMessageAt;
@override@JsonKey() final  int unreadCount;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatModelCopyWith<_ChatModel> get copyWith => __$ChatModelCopyWithImpl<_ChatModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.reportTitle, reportTitle) || other.reportTitle == reportTitle)&&(identical(other.reportImageUrl, reportImageUrl) || other.reportImageUrl == reportImageUrl)&&(identical(other.reportStatus, reportStatus) || other.reportStatus == reportStatus)&&(identical(other.claimStatus, claimStatus) || other.claimStatus == claimStatus)&&(identical(other.otherUser, otherUser) || other.otherUser == otherUser)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,reportId,reportTitle,reportImageUrl,reportStatus,claimStatus,otherUser,lastMessage,lastMessageAt,unreadCount);

@override
String toString() {
  return 'ChatModel(id: $id, reportId: $reportId, reportTitle: $reportTitle, reportImageUrl: $reportImageUrl, reportStatus: $reportStatus, claimStatus: $claimStatus, otherUser: $otherUser, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$ChatModelCopyWith(_ChatModel value, $Res Function(_ChatModel) _then) = __$ChatModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String reportId, String reportTitle, String? reportImageUrl, ReportStatus reportStatus, ClaimStatus? claimStatus, ChatParticipant otherUser, String? lastMessage, DateTime? lastMessageAt, int unreadCount
});




}
/// @nodoc
class __$ChatModelCopyWithImpl<$Res>
    implements _$ChatModelCopyWith<$Res> {
  __$ChatModelCopyWithImpl(this._self, this._then);

  final _ChatModel _self;
  final $Res Function(_ChatModel) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reportId = null,Object? reportTitle = null,Object? reportImageUrl = freezed,Object? reportStatus = null,Object? claimStatus = freezed,Object? otherUser = null,Object? lastMessage = freezed,Object? lastMessageAt = freezed,Object? unreadCount = null,}) {
  return _then(_ChatModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,reportTitle: null == reportTitle ? _self.reportTitle : reportTitle // ignore: cast_nullable_to_non_nullable
as String,reportImageUrl: freezed == reportImageUrl ? _self.reportImageUrl : reportImageUrl // ignore: cast_nullable_to_non_nullable
as String?,reportStatus: null == reportStatus ? _self.reportStatus : reportStatus // ignore: cast_nullable_to_non_nullable
as ReportStatus,claimStatus: freezed == claimStatus ? _self.claimStatus : claimStatus // ignore: cast_nullable_to_non_nullable
as ClaimStatus?,otherUser: null == otherUser ? _self.otherUser : otherUser // ignore: cast_nullable_to_non_nullable
as ChatParticipant,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppNotificationModel {

 String get id; NotificationType get type; bool get isRead; DateTime? get createdAt; String? get actorName; String? get itemTitle; String? get reportId; String? get chatId; String? get claimId; ReportStatus? get newStatus;
/// Create a copy of AppNotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppNotificationModelCopyWith<AppNotificationModel> get copyWith => _$AppNotificationModelCopyWithImpl<AppNotificationModel>(this as AppNotificationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.itemTitle, itemTitle) || other.itemTitle == itemTitle)&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,isRead,createdAt,actorName,itemTitle,reportId,chatId,claimId,newStatus);

@override
String toString() {
  return 'AppNotificationModel(id: $id, type: $type, isRead: $isRead, createdAt: $createdAt, actorName: $actorName, itemTitle: $itemTitle, reportId: $reportId, chatId: $chatId, claimId: $claimId, newStatus: $newStatus)';
}


}

/// @nodoc
abstract mixin class $AppNotificationModelCopyWith<$Res>  {
  factory $AppNotificationModelCopyWith(AppNotificationModel value, $Res Function(AppNotificationModel) _then) = _$AppNotificationModelCopyWithImpl;
@useResult
$Res call({
 String id, NotificationType type, bool isRead, DateTime? createdAt, String? actorName, String? itemTitle, String? reportId, String? chatId, String? claimId, ReportStatus? newStatus
});




}
/// @nodoc
class _$AppNotificationModelCopyWithImpl<$Res>
    implements $AppNotificationModelCopyWith<$Res> {
  _$AppNotificationModelCopyWithImpl(this._self, this._then);

  final AppNotificationModel _self;
  final $Res Function(AppNotificationModel) _then;

/// Create a copy of AppNotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? isRead = null,Object? createdAt = freezed,Object? actorName = freezed,Object? itemTitle = freezed,Object? reportId = freezed,Object? chatId = freezed,Object? claimId = freezed,Object? newStatus = freezed,}) {
  return _then(AppNotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,actorName: freezed == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String?,itemTitle: freezed == itemTitle ? _self.itemTitle : itemTitle // ignore: cast_nullable_to_non_nullable
as String?,reportId: freezed == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,claimId: freezed == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as String?,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as ReportStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppNotificationModel].
extension AppNotificationModelPatterns on AppNotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppNotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppNotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppNotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _AppNotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppNotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppNotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  NotificationType type,  bool isRead,  DateTime? createdAt,  String? actorName,  String? itemTitle,  String? reportId,  String? chatId,  String? claimId,  ReportStatus? newStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppNotificationModel() when $default != null:
return $default(_that.id,_that.type,_that.isRead,_that.createdAt,_that.actorName,_that.itemTitle,_that.reportId,_that.chatId,_that.claimId,_that.newStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  NotificationType type,  bool isRead,  DateTime? createdAt,  String? actorName,  String? itemTitle,  String? reportId,  String? chatId,  String? claimId,  ReportStatus? newStatus)  $default,) {final _that = this;
switch (_that) {
case _AppNotificationModel():
return $default(_that.id,_that.type,_that.isRead,_that.createdAt,_that.actorName,_that.itemTitle,_that.reportId,_that.chatId,_that.claimId,_that.newStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  NotificationType type,  bool isRead,  DateTime? createdAt,  String? actorName,  String? itemTitle,  String? reportId,  String? chatId,  String? claimId,  ReportStatus? newStatus)?  $default,) {final _that = this;
switch (_that) {
case _AppNotificationModel() when $default != null:
return $default(_that.id,_that.type,_that.isRead,_that.createdAt,_that.actorName,_that.itemTitle,_that.reportId,_that.chatId,_that.claimId,_that.newStatus);case _:
  return null;

}
}

}

/// @nodoc


class _AppNotificationModel extends AppNotificationModel {
  const _AppNotificationModel({required this.id, required this.type, this.isRead = false, this.createdAt, this.actorName, this.itemTitle, this.reportId, this.chatId, this.claimId, this.newStatus}): super._();
  

@override final  String id;
@override final  NotificationType type;
@override@JsonKey() final  bool isRead;
@override final  DateTime? createdAt;
@override final  String? actorName;
@override final  String? itemTitle;
@override final  String? reportId;
@override final  String? chatId;
@override final  String? claimId;
@override final  ReportStatus? newStatus;

/// Create a copy of AppNotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppNotificationModelCopyWith<_AppNotificationModel> get copyWith => __$AppNotificationModelCopyWithImpl<_AppNotificationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppNotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.itemTitle, itemTitle) || other.itemTitle == itemTitle)&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.claimId, claimId) || other.claimId == claimId)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,isRead,createdAt,actorName,itemTitle,reportId,chatId,claimId,newStatus);

@override
String toString() {
  return 'AppNotificationModel(id: $id, type: $type, isRead: $isRead, createdAt: $createdAt, actorName: $actorName, itemTitle: $itemTitle, reportId: $reportId, chatId: $chatId, claimId: $claimId, newStatus: $newStatus)';
}


}

/// @nodoc
abstract mixin class _$AppNotificationModelCopyWith<$Res> implements $AppNotificationModelCopyWith<$Res> {
  factory _$AppNotificationModelCopyWith(_AppNotificationModel value, $Res Function(_AppNotificationModel) _then) = __$AppNotificationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, NotificationType type, bool isRead, DateTime? createdAt, String? actorName, String? itemTitle, String? reportId, String? chatId, String? claimId, ReportStatus? newStatus
});




}
/// @nodoc
class __$AppNotificationModelCopyWithImpl<$Res>
    implements _$AppNotificationModelCopyWith<$Res> {
  __$AppNotificationModelCopyWithImpl(this._self, this._then);

  final _AppNotificationModel _self;
  final $Res Function(_AppNotificationModel) _then;

/// Create a copy of AppNotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? isRead = null,Object? createdAt = freezed,Object? actorName = freezed,Object? itemTitle = freezed,Object? reportId = freezed,Object? chatId = freezed,Object? claimId = freezed,Object? newStatus = freezed,}) {
  return _then(_AppNotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,actorName: freezed == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String?,itemTitle: freezed == itemTitle ? _self.itemTitle : itemTitle // ignore: cast_nullable_to_non_nullable
as String?,reportId: freezed == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,claimId: freezed == claimId ? _self.claimId : claimId // ignore: cast_nullable_to_non_nullable
as String?,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as ReportStatus?,
  ));
}


}

// dart format on

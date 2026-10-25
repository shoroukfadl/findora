// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocked_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlockedUserModel {

 String get uid; String get name; String? get photoUrl; DateTime? get blockedAt;
/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockedUserModelCopyWith<BlockedUserModel> get copyWith => _$BlockedUserModelCopyWithImpl<BlockedUserModel>(this as BlockedUserModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockedUserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,name,photoUrl,blockedAt);

@override
String toString() {
  return 'BlockedUserModel(uid: $uid, name: $name, photoUrl: $photoUrl, blockedAt: $blockedAt)';
}


}

/// @nodoc
abstract mixin class $BlockedUserModelCopyWith<$Res>  {
  factory $BlockedUserModelCopyWith(BlockedUserModel value, $Res Function(BlockedUserModel) _then) = _$BlockedUserModelCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String? photoUrl, DateTime? blockedAt
});




}
/// @nodoc
class _$BlockedUserModelCopyWithImpl<$Res>
    implements $BlockedUserModelCopyWith<$Res> {
  _$BlockedUserModelCopyWithImpl(this._self, this._then);

  final BlockedUserModel _self;
  final $Res Function(BlockedUserModel) _then;

/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? photoUrl = freezed,Object? blockedAt = freezed,}) {
  return _then(BlockedUserModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockedUserModel].
extension BlockedUserModelPatterns on BlockedUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockedUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockedUserModel value)  $default,){
final _that = this;
switch (_that) {
case _BlockedUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockedUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String name,  String? photoUrl,  DateTime? blockedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
return $default(_that.uid,_that.name,_that.photoUrl,_that.blockedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String name,  String? photoUrl,  DateTime? blockedAt)  $default,) {final _that = this;
switch (_that) {
case _BlockedUserModel():
return $default(_that.uid,_that.name,_that.photoUrl,_that.blockedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String name,  String? photoUrl,  DateTime? blockedAt)?  $default,) {final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
return $default(_that.uid,_that.name,_that.photoUrl,_that.blockedAt);case _:
  return null;

}
}

}

/// @nodoc


class _BlockedUserModel extends BlockedUserModel {
  const _BlockedUserModel({required this.uid, required this.name, this.photoUrl, this.blockedAt}): super._();
  

@override final  String uid;
@override final  String name;
@override final  String? photoUrl;
@override final  DateTime? blockedAt;

/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockedUserModelCopyWith<_BlockedUserModel> get copyWith => __$BlockedUserModelCopyWithImpl<_BlockedUserModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockedUserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.blockedAt, blockedAt) || other.blockedAt == blockedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,name,photoUrl,blockedAt);

@override
String toString() {
  return 'BlockedUserModel(uid: $uid, name: $name, photoUrl: $photoUrl, blockedAt: $blockedAt)';
}


}

/// @nodoc
abstract mixin class _$BlockedUserModelCopyWith<$Res> implements $BlockedUserModelCopyWith<$Res> {
  factory _$BlockedUserModelCopyWith(_BlockedUserModel value, $Res Function(_BlockedUserModel) _then) = __$BlockedUserModelCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name, String? photoUrl, DateTime? blockedAt
});




}
/// @nodoc
class __$BlockedUserModelCopyWithImpl<$Res>
    implements _$BlockedUserModelCopyWith<$Res> {
  __$BlockedUserModelCopyWithImpl(this._self, this._then);

  final _BlockedUserModel _self;
  final $Res Function(_BlockedUserModel) _then;

/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? photoUrl = freezed,Object? blockedAt = freezed,}) {
  return _then(_BlockedUserModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,blockedAt: freezed == blockedAt ? _self.blockedAt : blockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

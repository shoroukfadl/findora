// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationPrefsModel {

 bool get messages; bool get claimUpdates; bool get nearbyReports;
/// Create a copy of NotificationPrefsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPrefsModelCopyWith<NotificationPrefsModel> get copyWith => _$NotificationPrefsModelCopyWithImpl<NotificationPrefsModel>(this as NotificationPrefsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPrefsModel&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.claimUpdates, claimUpdates) || other.claimUpdates == claimUpdates)&&(identical(other.nearbyReports, nearbyReports) || other.nearbyReports == nearbyReports));
}


@override
int get hashCode => Object.hash(runtimeType,messages,claimUpdates,nearbyReports);

@override
String toString() {
  return 'NotificationPrefsModel(messages: $messages, claimUpdates: $claimUpdates, nearbyReports: $nearbyReports)';
}


}

/// @nodoc
abstract mixin class $NotificationPrefsModelCopyWith<$Res>  {
  factory $NotificationPrefsModelCopyWith(NotificationPrefsModel value, $Res Function(NotificationPrefsModel) _then) = _$NotificationPrefsModelCopyWithImpl;
@useResult
$Res call({
 bool messages, bool claimUpdates, bool nearbyReports
});




}
/// @nodoc
class _$NotificationPrefsModelCopyWithImpl<$Res>
    implements $NotificationPrefsModelCopyWith<$Res> {
  _$NotificationPrefsModelCopyWithImpl(this._self, this._then);

  final NotificationPrefsModel _self;
  final $Res Function(NotificationPrefsModel) _then;

/// Create a copy of NotificationPrefsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? claimUpdates = null,Object? nearbyReports = null,}) {
  return _then(NotificationPrefsModel(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as bool,claimUpdates: null == claimUpdates ? _self.claimUpdates : claimUpdates // ignore: cast_nullable_to_non_nullable
as bool,nearbyReports: null == nearbyReports ? _self.nearbyReports : nearbyReports // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPrefsModel].
extension NotificationPrefsModelPatterns on NotificationPrefsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPrefsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPrefsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPrefsModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPrefsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPrefsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPrefsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool messages,  bool claimUpdates,  bool nearbyReports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPrefsModel() when $default != null:
return $default(_that.messages,_that.claimUpdates,_that.nearbyReports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool messages,  bool claimUpdates,  bool nearbyReports)  $default,) {final _that = this;
switch (_that) {
case _NotificationPrefsModel():
return $default(_that.messages,_that.claimUpdates,_that.nearbyReports);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool messages,  bool claimUpdates,  bool nearbyReports)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPrefsModel() when $default != null:
return $default(_that.messages,_that.claimUpdates,_that.nearbyReports);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationPrefsModel extends NotificationPrefsModel {
  const _NotificationPrefsModel({this.messages = true, this.claimUpdates = true, this.nearbyReports = false}): super._();
  

@override@JsonKey() final  bool messages;
@override@JsonKey() final  bool claimUpdates;
@override@JsonKey() final  bool nearbyReports;

/// Create a copy of NotificationPrefsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPrefsModelCopyWith<_NotificationPrefsModel> get copyWith => __$NotificationPrefsModelCopyWithImpl<_NotificationPrefsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPrefsModel&&(identical(other.messages, messages) || other.messages == messages)&&(identical(other.claimUpdates, claimUpdates) || other.claimUpdates == claimUpdates)&&(identical(other.nearbyReports, nearbyReports) || other.nearbyReports == nearbyReports));
}


@override
int get hashCode => Object.hash(runtimeType,messages,claimUpdates,nearbyReports);

@override
String toString() {
  return 'NotificationPrefsModel(messages: $messages, claimUpdates: $claimUpdates, nearbyReports: $nearbyReports)';
}


}

/// @nodoc
abstract mixin class _$NotificationPrefsModelCopyWith<$Res> implements $NotificationPrefsModelCopyWith<$Res> {
  factory _$NotificationPrefsModelCopyWith(_NotificationPrefsModel value, $Res Function(_NotificationPrefsModel) _then) = __$NotificationPrefsModelCopyWithImpl;
@override @useResult
$Res call({
 bool messages, bool claimUpdates, bool nearbyReports
});




}
/// @nodoc
class __$NotificationPrefsModelCopyWithImpl<$Res>
    implements _$NotificationPrefsModelCopyWith<$Res> {
  __$NotificationPrefsModelCopyWithImpl(this._self, this._then);

  final _NotificationPrefsModel _self;
  final $Res Function(_NotificationPrefsModel) _then;

/// Create a copy of NotificationPrefsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? claimUpdates = null,Object? nearbyReports = null,}) {
  return _then(_NotificationPrefsModel(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as bool,claimUpdates: null == claimUpdates ? _self.claimUpdates : claimUpdates // ignore: cast_nullable_to_non_nullable
as bool,nearbyReports: null == nearbyReports ? _self.nearbyReports : nearbyReports // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$UserModel {

 String get uid; String get name; String get email; String? get photoUrl; bool get isEmailVerified; DateTime? get createdAt; NotificationPrefsModel get notificationPrefs;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.notificationPrefs, notificationPrefs) || other.notificationPrefs == notificationPrefs));
}


@override
int get hashCode => Object.hash(runtimeType,uid,name,email,photoUrl,isEmailVerified,createdAt,notificationPrefs);

@override
String toString() {
  return 'UserModel(uid: $uid, name: $name, email: $email, photoUrl: $photoUrl, isEmailVerified: $isEmailVerified, createdAt: $createdAt, notificationPrefs: $notificationPrefs)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String email, String? photoUrl, bool isEmailVerified, DateTime? createdAt, NotificationPrefsModel notificationPrefs
});


$NotificationPrefsModelCopyWith<$Res> get notificationPrefs;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? email = null,Object? photoUrl = freezed,Object? isEmailVerified = null,Object? createdAt = freezed,Object? notificationPrefs = null,}) {
  return _then(UserModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notificationPrefs: null == notificationPrefs ? _self.notificationPrefs : notificationPrefs // ignore: cast_nullable_to_non_nullable
as NotificationPrefsModel,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPrefsModelCopyWith<$Res> get notificationPrefs {
  
  return $NotificationPrefsModelCopyWith<$Res>(_self.notificationPrefs, (value) {
    return _then(_self.copyWith(notificationPrefs: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String name,  String email,  String? photoUrl,  bool isEmailVerified,  DateTime? createdAt,  NotificationPrefsModel notificationPrefs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.uid,_that.name,_that.email,_that.photoUrl,_that.isEmailVerified,_that.createdAt,_that.notificationPrefs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String name,  String email,  String? photoUrl,  bool isEmailVerified,  DateTime? createdAt,  NotificationPrefsModel notificationPrefs)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.uid,_that.name,_that.email,_that.photoUrl,_that.isEmailVerified,_that.createdAt,_that.notificationPrefs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String name,  String email,  String? photoUrl,  bool isEmailVerified,  DateTime? createdAt,  NotificationPrefsModel notificationPrefs)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.uid,_that.name,_that.email,_that.photoUrl,_that.isEmailVerified,_that.createdAt,_that.notificationPrefs);case _:
  return null;

}
}

}

/// @nodoc


class _UserModel extends UserModel {
  const _UserModel({required this.uid, required this.name, required this.email, this.photoUrl, this.isEmailVerified = false, this.createdAt, required this.notificationPrefs}): super._();
  

@override final  String uid;
@override final  String name;
@override final  String email;
@override final  String? photoUrl;
@override@JsonKey() final  bool isEmailVerified;
@override final  DateTime? createdAt;
@override final  NotificationPrefsModel notificationPrefs;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.notificationPrefs, notificationPrefs) || other.notificationPrefs == notificationPrefs));
}


@override
int get hashCode => Object.hash(runtimeType,uid,name,email,photoUrl,isEmailVerified,createdAt,notificationPrefs);

@override
String toString() {
  return 'UserModel(uid: $uid, name: $name, email: $email, photoUrl: $photoUrl, isEmailVerified: $isEmailVerified, createdAt: $createdAt, notificationPrefs: $notificationPrefs)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name, String email, String? photoUrl, bool isEmailVerified, DateTime? createdAt, NotificationPrefsModel notificationPrefs
});


@override $NotificationPrefsModelCopyWith<$Res> get notificationPrefs;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? email = null,Object? photoUrl = freezed,Object? isEmailVerified = null,Object? createdAt = freezed,Object? notificationPrefs = null,}) {
  return _then(_UserModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notificationPrefs: null == notificationPrefs ? _self.notificationPrefs : notificationPrefs // ignore: cast_nullable_to_non_nullable
as NotificationPrefsModel,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationPrefsModelCopyWith<$Res> get notificationPrefs {
  
  return $NotificationPrefsModelCopyWith<$Res>(_self.notificationPrefs, (value) {
    return _then(_self.copyWith(notificationPrefs: value));
  });
}
}

// dart format on

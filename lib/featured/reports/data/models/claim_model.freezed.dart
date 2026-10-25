// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClaimModel {

 String get id; String get reportId; String? get reportTitle; String get reportOwnerId; String get claimantId; String get claimantName; String? get claimantPhotoUrl; bool get claimantVerified; String get answer; String? get proofImageUrl; ClaimStatus get status; String? get chatId; DateTime? get createdAt; DateTime? get decidedAt;
/// Create a copy of ClaimModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimModelCopyWith<ClaimModel> get copyWith => _$ClaimModelCopyWithImpl<ClaimModel>(this as ClaimModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimModel&&(identical(other.id, id) || other.id == id)&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.reportTitle, reportTitle) || other.reportTitle == reportTitle)&&(identical(other.reportOwnerId, reportOwnerId) || other.reportOwnerId == reportOwnerId)&&(identical(other.claimantId, claimantId) || other.claimantId == claimantId)&&(identical(other.claimantName, claimantName) || other.claimantName == claimantName)&&(identical(other.claimantPhotoUrl, claimantPhotoUrl) || other.claimantPhotoUrl == claimantPhotoUrl)&&(identical(other.claimantVerified, claimantVerified) || other.claimantVerified == claimantVerified)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.proofImageUrl, proofImageUrl) || other.proofImageUrl == proofImageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,reportId,reportTitle,reportOwnerId,claimantId,claimantName,claimantPhotoUrl,claimantVerified,answer,proofImageUrl,status,chatId,createdAt,decidedAt);

@override
String toString() {
  return 'ClaimModel(id: $id, reportId: $reportId, reportTitle: $reportTitle, reportOwnerId: $reportOwnerId, claimantId: $claimantId, claimantName: $claimantName, claimantPhotoUrl: $claimantPhotoUrl, claimantVerified: $claimantVerified, answer: $answer, proofImageUrl: $proofImageUrl, status: $status, chatId: $chatId, createdAt: $createdAt, decidedAt: $decidedAt)';
}


}

/// @nodoc
abstract mixin class $ClaimModelCopyWith<$Res>  {
  factory $ClaimModelCopyWith(ClaimModel value, $Res Function(ClaimModel) _then) = _$ClaimModelCopyWithImpl;
@useResult
$Res call({
 String id, String reportId, String? reportTitle, String reportOwnerId, String claimantId, String claimantName, String? claimantPhotoUrl, bool claimantVerified, String answer, String? proofImageUrl, ClaimStatus status, String? chatId, DateTime? createdAt, DateTime? decidedAt
});




}
/// @nodoc
class _$ClaimModelCopyWithImpl<$Res>
    implements $ClaimModelCopyWith<$Res> {
  _$ClaimModelCopyWithImpl(this._self, this._then);

  final ClaimModel _self;
  final $Res Function(ClaimModel) _then;

/// Create a copy of ClaimModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reportId = null,Object? reportTitle = freezed,Object? reportOwnerId = null,Object? claimantId = null,Object? claimantName = null,Object? claimantPhotoUrl = freezed,Object? claimantVerified = null,Object? answer = null,Object? proofImageUrl = freezed,Object? status = null,Object? chatId = freezed,Object? createdAt = freezed,Object? decidedAt = freezed,}) {
  return _then(ClaimModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,reportTitle: freezed == reportTitle ? _self.reportTitle : reportTitle // ignore: cast_nullable_to_non_nullable
as String?,reportOwnerId: null == reportOwnerId ? _self.reportOwnerId : reportOwnerId // ignore: cast_nullable_to_non_nullable
as String,claimantId: null == claimantId ? _self.claimantId : claimantId // ignore: cast_nullable_to_non_nullable
as String,claimantName: null == claimantName ? _self.claimantName : claimantName // ignore: cast_nullable_to_non_nullable
as String,claimantPhotoUrl: freezed == claimantPhotoUrl ? _self.claimantPhotoUrl : claimantPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,claimantVerified: null == claimantVerified ? _self.claimantVerified : claimantVerified // ignore: cast_nullable_to_non_nullable
as bool,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,proofImageUrl: freezed == proofImageUrl ? _self.proofImageUrl : proofImageUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimModel].
extension ClaimModelPatterns on ClaimModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimModel value)  $default,){
final _that = this;
switch (_that) {
case _ClaimModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String reportId,  String? reportTitle,  String reportOwnerId,  String claimantId,  String claimantName,  String? claimantPhotoUrl,  bool claimantVerified,  String answer,  String? proofImageUrl,  ClaimStatus status,  String? chatId,  DateTime? createdAt,  DateTime? decidedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimModel() when $default != null:
return $default(_that.id,_that.reportId,_that.reportTitle,_that.reportOwnerId,_that.claimantId,_that.claimantName,_that.claimantPhotoUrl,_that.claimantVerified,_that.answer,_that.proofImageUrl,_that.status,_that.chatId,_that.createdAt,_that.decidedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String reportId,  String? reportTitle,  String reportOwnerId,  String claimantId,  String claimantName,  String? claimantPhotoUrl,  bool claimantVerified,  String answer,  String? proofImageUrl,  ClaimStatus status,  String? chatId,  DateTime? createdAt,  DateTime? decidedAt)  $default,) {final _that = this;
switch (_that) {
case _ClaimModel():
return $default(_that.id,_that.reportId,_that.reportTitle,_that.reportOwnerId,_that.claimantId,_that.claimantName,_that.claimantPhotoUrl,_that.claimantVerified,_that.answer,_that.proofImageUrl,_that.status,_that.chatId,_that.createdAt,_that.decidedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String reportId,  String? reportTitle,  String reportOwnerId,  String claimantId,  String claimantName,  String? claimantPhotoUrl,  bool claimantVerified,  String answer,  String? proofImageUrl,  ClaimStatus status,  String? chatId,  DateTime? createdAt,  DateTime? decidedAt)?  $default,) {final _that = this;
switch (_that) {
case _ClaimModel() when $default != null:
return $default(_that.id,_that.reportId,_that.reportTitle,_that.reportOwnerId,_that.claimantId,_that.claimantName,_that.claimantPhotoUrl,_that.claimantVerified,_that.answer,_that.proofImageUrl,_that.status,_that.chatId,_that.createdAt,_that.decidedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ClaimModel extends ClaimModel {
  const _ClaimModel({required this.id, required this.reportId, this.reportTitle, required this.reportOwnerId, required this.claimantId, required this.claimantName, this.claimantPhotoUrl, this.claimantVerified = false, required this.answer, this.proofImageUrl, this.status = ClaimStatus.pending, this.chatId, this.createdAt, this.decidedAt}): super._();
  

@override final  String id;
@override final  String reportId;
@override final  String? reportTitle;
@override final  String reportOwnerId;
@override final  String claimantId;
@override final  String claimantName;
@override final  String? claimantPhotoUrl;
@override@JsonKey() final  bool claimantVerified;
@override final  String answer;
@override final  String? proofImageUrl;
@override@JsonKey() final  ClaimStatus status;
@override final  String? chatId;
@override final  DateTime? createdAt;
@override final  DateTime? decidedAt;

/// Create a copy of ClaimModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimModelCopyWith<_ClaimModel> get copyWith => __$ClaimModelCopyWithImpl<_ClaimModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimModel&&(identical(other.id, id) || other.id == id)&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.reportTitle, reportTitle) || other.reportTitle == reportTitle)&&(identical(other.reportOwnerId, reportOwnerId) || other.reportOwnerId == reportOwnerId)&&(identical(other.claimantId, claimantId) || other.claimantId == claimantId)&&(identical(other.claimantName, claimantName) || other.claimantName == claimantName)&&(identical(other.claimantPhotoUrl, claimantPhotoUrl) || other.claimantPhotoUrl == claimantPhotoUrl)&&(identical(other.claimantVerified, claimantVerified) || other.claimantVerified == claimantVerified)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.proofImageUrl, proofImageUrl) || other.proofImageUrl == proofImageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,reportId,reportTitle,reportOwnerId,claimantId,claimantName,claimantPhotoUrl,claimantVerified,answer,proofImageUrl,status,chatId,createdAt,decidedAt);

@override
String toString() {
  return 'ClaimModel(id: $id, reportId: $reportId, reportTitle: $reportTitle, reportOwnerId: $reportOwnerId, claimantId: $claimantId, claimantName: $claimantName, claimantPhotoUrl: $claimantPhotoUrl, claimantVerified: $claimantVerified, answer: $answer, proofImageUrl: $proofImageUrl, status: $status, chatId: $chatId, createdAt: $createdAt, decidedAt: $decidedAt)';
}


}

/// @nodoc
abstract mixin class _$ClaimModelCopyWith<$Res> implements $ClaimModelCopyWith<$Res> {
  factory _$ClaimModelCopyWith(_ClaimModel value, $Res Function(_ClaimModel) _then) = __$ClaimModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String reportId, String? reportTitle, String reportOwnerId, String claimantId, String claimantName, String? claimantPhotoUrl, bool claimantVerified, String answer, String? proofImageUrl, ClaimStatus status, String? chatId, DateTime? createdAt, DateTime? decidedAt
});




}
/// @nodoc
class __$ClaimModelCopyWithImpl<$Res>
    implements _$ClaimModelCopyWith<$Res> {
  __$ClaimModelCopyWithImpl(this._self, this._then);

  final _ClaimModel _self;
  final $Res Function(_ClaimModel) _then;

/// Create a copy of ClaimModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reportId = null,Object? reportTitle = freezed,Object? reportOwnerId = null,Object? claimantId = null,Object? claimantName = null,Object? claimantPhotoUrl = freezed,Object? claimantVerified = null,Object? answer = null,Object? proofImageUrl = freezed,Object? status = null,Object? chatId = freezed,Object? createdAt = freezed,Object? decidedAt = freezed,}) {
  return _then(_ClaimModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,reportTitle: freezed == reportTitle ? _self.reportTitle : reportTitle // ignore: cast_nullable_to_non_nullable
as String?,reportOwnerId: null == reportOwnerId ? _self.reportOwnerId : reportOwnerId // ignore: cast_nullable_to_non_nullable
as String,claimantId: null == claimantId ? _self.claimantId : claimantId // ignore: cast_nullable_to_non_nullable
as String,claimantName: null == claimantName ? _self.claimantName : claimantName // ignore: cast_nullable_to_non_nullable
as String,claimantPhotoUrl: freezed == claimantPhotoUrl ? _self.claimantPhotoUrl : claimantPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,claimantVerified: null == claimantVerified ? _self.claimantVerified : claimantVerified // ignore: cast_nullable_to_non_nullable
as bool,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,proofImageUrl: freezed == proofImageUrl ? _self.proofImageUrl : proofImageUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

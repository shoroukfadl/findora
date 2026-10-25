// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedReportModel {

 String get reportId; DateTime? get savedAt;
/// Create a copy of SavedReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedReportModelCopyWith<SavedReportModel> get copyWith => _$SavedReportModelCopyWithImpl<SavedReportModel>(this as SavedReportModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedReportModel&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt));
}


@override
int get hashCode => Object.hash(runtimeType,reportId,savedAt);

@override
String toString() {
  return 'SavedReportModel(reportId: $reportId, savedAt: $savedAt)';
}


}

/// @nodoc
abstract mixin class $SavedReportModelCopyWith<$Res>  {
  factory $SavedReportModelCopyWith(SavedReportModel value, $Res Function(SavedReportModel) _then) = _$SavedReportModelCopyWithImpl;
@useResult
$Res call({
 String reportId, DateTime? savedAt
});




}
/// @nodoc
class _$SavedReportModelCopyWithImpl<$Res>
    implements $SavedReportModelCopyWith<$Res> {
  _$SavedReportModelCopyWithImpl(this._self, this._then);

  final SavedReportModel _self;
  final $Res Function(SavedReportModel) _then;

/// Create a copy of SavedReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportId = null,Object? savedAt = freezed,}) {
  return _then(SavedReportModel(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,savedAt: freezed == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedReportModel].
extension SavedReportModelPatterns on SavedReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedReportModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reportId,  DateTime? savedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedReportModel() when $default != null:
return $default(_that.reportId,_that.savedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reportId,  DateTime? savedAt)  $default,) {final _that = this;
switch (_that) {
case _SavedReportModel():
return $default(_that.reportId,_that.savedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reportId,  DateTime? savedAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedReportModel() when $default != null:
return $default(_that.reportId,_that.savedAt);case _:
  return null;

}
}

}

/// @nodoc


class _SavedReportModel extends SavedReportModel {
  const _SavedReportModel({required this.reportId, this.savedAt}): super._();
  

@override final  String reportId;
@override final  DateTime? savedAt;

/// Create a copy of SavedReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedReportModelCopyWith<_SavedReportModel> get copyWith => __$SavedReportModelCopyWithImpl<_SavedReportModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedReportModel&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt));
}


@override
int get hashCode => Object.hash(runtimeType,reportId,savedAt);

@override
String toString() {
  return 'SavedReportModel(reportId: $reportId, savedAt: $savedAt)';
}


}

/// @nodoc
abstract mixin class _$SavedReportModelCopyWith<$Res> implements $SavedReportModelCopyWith<$Res> {
  factory _$SavedReportModelCopyWith(_SavedReportModel value, $Res Function(_SavedReportModel) _then) = __$SavedReportModelCopyWithImpl;
@override @useResult
$Res call({
 String reportId, DateTime? savedAt
});




}
/// @nodoc
class __$SavedReportModelCopyWithImpl<$Res>
    implements _$SavedReportModelCopyWith<$Res> {
  __$SavedReportModelCopyWithImpl(this._self, this._then);

  final _SavedReportModel _self;
  final $Res Function(_SavedReportModel) _then;

/// Create a copy of SavedReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportId = null,Object? savedAt = freezed,}) {
  return _then(_SavedReportModel(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,savedAt: freezed == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

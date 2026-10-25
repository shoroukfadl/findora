// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditReportModel {

 String get id; String get title; String get description; ReportStatus get status;
/// Create a copy of EditReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditReportModelCopyWith<EditReportModel> get copyWith => _$EditReportModelCopyWithImpl<EditReportModel>(this as EditReportModel, _$identity);

  /// Serializes this EditReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status);

@override
String toString() {
  return 'EditReportModel(id: $id, title: $title, description: $description, status: $status)';
}


}

/// @nodoc
abstract mixin class $EditReportModelCopyWith<$Res>  {
  factory $EditReportModelCopyWith(EditReportModel value, $Res Function(EditReportModel) _then) = _$EditReportModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, ReportStatus status
});




}
/// @nodoc
class _$EditReportModelCopyWithImpl<$Res>
    implements $EditReportModelCopyWith<$Res> {
  _$EditReportModelCopyWithImpl(this._self, this._then);

  final EditReportModel _self;
  final $Res Function(EditReportModel) _then;

/// Create a copy of EditReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? status = null,}) {
  return _then(EditReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [EditReportModel].
extension EditReportModelPatterns on EditReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditReportModel value)  $default,){
final _that = this;
switch (_that) {
case _EditReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _EditReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  ReportStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditReportModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  ReportStatus status)  $default,) {final _that = this;
switch (_that) {
case _EditReportModel():
return $default(_that.id,_that.title,_that.description,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  ReportStatus status)?  $default,) {final _that = this;
switch (_that) {
case _EditReportModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditReportModel extends EditReportModel {
  const _EditReportModel({required this.id, required this.title, required this.description, required this.status}): super._();
  factory _EditReportModel.fromJson(Map<String, dynamic> json) => _$EditReportModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  ReportStatus status;

/// Create a copy of EditReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditReportModelCopyWith<_EditReportModel> get copyWith => __$EditReportModelCopyWithImpl<_EditReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status);

@override
String toString() {
  return 'EditReportModel(id: $id, title: $title, description: $description, status: $status)';
}


}

/// @nodoc
abstract mixin class _$EditReportModelCopyWith<$Res> implements $EditReportModelCopyWith<$Res> {
  factory _$EditReportModelCopyWith(_EditReportModel value, $Res Function(_EditReportModel) _then) = __$EditReportModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, ReportStatus status
});




}
/// @nodoc
class __$EditReportModelCopyWithImpl<$Res>
    implements _$EditReportModelCopyWith<$Res> {
  __$EditReportModelCopyWithImpl(this._self, this._then);

  final _EditReportModel _self;
  final $Res Function(_EditReportModel) _then;

/// Create a copy of EditReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? status = null,}) {
  return _then(_EditReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,
  ));
}


}

// dart format on

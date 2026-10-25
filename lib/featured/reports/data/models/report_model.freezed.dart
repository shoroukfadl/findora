// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportModel {

 String get id; String get ownerId; String get ownerName; String? get ownerPhotoUrl; bool get ownerVerified; ReportType get type; String get title; ReportCategory get category; String get description; List<String> get imageUrls; GeoLocationModel get location; DateTime get eventDate; ReportStatus get status; String? get verificationQuestion; DateTime? get createdAt; DateTime? get updatedAt; double get distanceKm; bool get isSaved;
/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportModelCopyWith<ReportModel> get copyWith => _$ReportModelCopyWithImpl<ReportModel>(this as ReportModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.ownerPhotoUrl, ownerPhotoUrl) || other.ownerPhotoUrl == ownerPhotoUrl)&&(identical(other.ownerVerified, ownerVerified) || other.ownerVerified == ownerVerified)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.location, location) || other.location == location)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.verificationQuestion, verificationQuestion) || other.verificationQuestion == verificationQuestion)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved));
}


@override
int get hashCode => Object.hash(runtimeType,id,ownerId,ownerName,ownerPhotoUrl,ownerVerified,type,title,category,description,const DeepCollectionEquality().hash(imageUrls),location,eventDate,status,verificationQuestion,createdAt,updatedAt,distanceKm,isSaved);

@override
String toString() {
  return 'ReportModel(id: $id, ownerId: $ownerId, ownerName: $ownerName, ownerPhotoUrl: $ownerPhotoUrl, ownerVerified: $ownerVerified, type: $type, title: $title, category: $category, description: $description, imageUrls: $imageUrls, location: $location, eventDate: $eventDate, status: $status, verificationQuestion: $verificationQuestion, createdAt: $createdAt, updatedAt: $updatedAt, distanceKm: $distanceKm, isSaved: $isSaved)';
}


}

/// @nodoc
abstract mixin class $ReportModelCopyWith<$Res>  {
  factory $ReportModelCopyWith(ReportModel value, $Res Function(ReportModel) _then) = _$ReportModelCopyWithImpl;
@useResult
$Res call({
 String id, String ownerId, String ownerName, String? ownerPhotoUrl, bool ownerVerified, ReportType type, String title, ReportCategory category, String description, List<String> imageUrls, GeoLocationModel location, DateTime eventDate, ReportStatus status, String? verificationQuestion, DateTime? createdAt, DateTime? updatedAt, double distanceKm, bool isSaved
});


$GeoLocationModelCopyWith<$Res> get location;

}
/// @nodoc
class _$ReportModelCopyWithImpl<$Res>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._self, this._then);

  final ReportModel _self;
  final $Res Function(ReportModel) _then;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ownerId = null,Object? ownerName = null,Object? ownerPhotoUrl = freezed,Object? ownerVerified = null,Object? type = null,Object? title = null,Object? category = null,Object? description = null,Object? imageUrls = null,Object? location = null,Object? eventDate = null,Object? status = null,Object? verificationQuestion = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? distanceKm = null,Object? isSaved = null,}) {
  return _then(ReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,ownerPhotoUrl: freezed == ownerPhotoUrl ? _self.ownerPhotoUrl : ownerPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,ownerVerified: null == ownerVerified ? _self.ownerVerified : ownerVerified // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReportType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ReportCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocationModel,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,verificationQuestion: freezed == verificationQuestion ? _self.verificationQuestion : verificationQuestion // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationModelCopyWith<$Res> get location {
  
  return $GeoLocationModelCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportModel].
extension ReportModelPatterns on ReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ownerId,  String ownerName,  String? ownerPhotoUrl,  bool ownerVerified,  ReportType type,  String title,  ReportCategory category,  String description,  List<String> imageUrls,  GeoLocationModel location,  DateTime eventDate,  ReportStatus status,  String? verificationQuestion,  DateTime? createdAt,  DateTime? updatedAt,  double distanceKm,  bool isSaved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
return $default(_that.id,_that.ownerId,_that.ownerName,_that.ownerPhotoUrl,_that.ownerVerified,_that.type,_that.title,_that.category,_that.description,_that.imageUrls,_that.location,_that.eventDate,_that.status,_that.verificationQuestion,_that.createdAt,_that.updatedAt,_that.distanceKm,_that.isSaved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ownerId,  String ownerName,  String? ownerPhotoUrl,  bool ownerVerified,  ReportType type,  String title,  ReportCategory category,  String description,  List<String> imageUrls,  GeoLocationModel location,  DateTime eventDate,  ReportStatus status,  String? verificationQuestion,  DateTime? createdAt,  DateTime? updatedAt,  double distanceKm,  bool isSaved)  $default,) {final _that = this;
switch (_that) {
case _ReportModel():
return $default(_that.id,_that.ownerId,_that.ownerName,_that.ownerPhotoUrl,_that.ownerVerified,_that.type,_that.title,_that.category,_that.description,_that.imageUrls,_that.location,_that.eventDate,_that.status,_that.verificationQuestion,_that.createdAt,_that.updatedAt,_that.distanceKm,_that.isSaved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ownerId,  String ownerName,  String? ownerPhotoUrl,  bool ownerVerified,  ReportType type,  String title,  ReportCategory category,  String description,  List<String> imageUrls,  GeoLocationModel location,  DateTime eventDate,  ReportStatus status,  String? verificationQuestion,  DateTime? createdAt,  DateTime? updatedAt,  double distanceKm,  bool isSaved)?  $default,) {final _that = this;
switch (_that) {
case _ReportModel() when $default != null:
return $default(_that.id,_that.ownerId,_that.ownerName,_that.ownerPhotoUrl,_that.ownerVerified,_that.type,_that.title,_that.category,_that.description,_that.imageUrls,_that.location,_that.eventDate,_that.status,_that.verificationQuestion,_that.createdAt,_that.updatedAt,_that.distanceKm,_that.isSaved);case _:
  return null;

}
}

}

/// @nodoc


class _ReportModel extends ReportModel {
  const _ReportModel({required this.id, required this.ownerId, required this.ownerName, this.ownerPhotoUrl, this.ownerVerified = false, required this.type, required this.title, this.category = ReportCategory.other, this.description = '',  List<String> imageUrls = const [], required this.location, required this.eventDate, this.status = ReportStatus.open, this.verificationQuestion, this.createdAt, this.updatedAt, this.distanceKm = 0.0, this.isSaved = false}): _imageUrls = imageUrls,super._();
  

@override final  String id;
@override final  String ownerId;
@override final  String ownerName;
@override final  String? ownerPhotoUrl;
@override@JsonKey() final  bool ownerVerified;
@override final  ReportType type;
@override final  String title;
@override@JsonKey() final  ReportCategory category;
@override@JsonKey() final  String description;
 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override final  GeoLocationModel location;
@override final  DateTime eventDate;
@override@JsonKey() final  ReportStatus status;
@override final  String? verificationQuestion;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey() final  double distanceKm;
@override@JsonKey() final  bool isSaved;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportModelCopyWith<_ReportModel> get copyWith => __$ReportModelCopyWithImpl<_ReportModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.ownerPhotoUrl, ownerPhotoUrl) || other.ownerPhotoUrl == ownerPhotoUrl)&&(identical(other.ownerVerified, ownerVerified) || other.ownerVerified == ownerVerified)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.location, location) || other.location == location)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.verificationQuestion, verificationQuestion) || other.verificationQuestion == verificationQuestion)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved));
}


@override
int get hashCode => Object.hash(runtimeType,id,ownerId,ownerName,ownerPhotoUrl,ownerVerified,type,title,category,description,const DeepCollectionEquality().hash(_imageUrls),location,eventDate,status,verificationQuestion,createdAt,updatedAt,distanceKm,isSaved);

@override
String toString() {
  return 'ReportModel(id: $id, ownerId: $ownerId, ownerName: $ownerName, ownerPhotoUrl: $ownerPhotoUrl, ownerVerified: $ownerVerified, type: $type, title: $title, category: $category, description: $description, imageUrls: $imageUrls, location: $location, eventDate: $eventDate, status: $status, verificationQuestion: $verificationQuestion, createdAt: $createdAt, updatedAt: $updatedAt, distanceKm: $distanceKm, isSaved: $isSaved)';
}


}

/// @nodoc
abstract mixin class _$ReportModelCopyWith<$Res> implements $ReportModelCopyWith<$Res> {
  factory _$ReportModelCopyWith(_ReportModel value, $Res Function(_ReportModel) _then) = __$ReportModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String ownerId, String ownerName, String? ownerPhotoUrl, bool ownerVerified, ReportType type, String title, ReportCategory category, String description, List<String> imageUrls, GeoLocationModel location, DateTime eventDate, ReportStatus status, String? verificationQuestion, DateTime? createdAt, DateTime? updatedAt, double distanceKm, bool isSaved
});


@override $GeoLocationModelCopyWith<$Res> get location;

}
/// @nodoc
class __$ReportModelCopyWithImpl<$Res>
    implements _$ReportModelCopyWith<$Res> {
  __$ReportModelCopyWithImpl(this._self, this._then);

  final _ReportModel _self;
  final $Res Function(_ReportModel) _then;

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ownerId = null,Object? ownerName = null,Object? ownerPhotoUrl = freezed,Object? ownerVerified = null,Object? type = null,Object? title = null,Object? category = null,Object? description = null,Object? imageUrls = null,Object? location = null,Object? eventDate = null,Object? status = null,Object? verificationQuestion = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? distanceKm = null,Object? isSaved = null,}) {
  return _then(_ReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,ownerPhotoUrl: freezed == ownerPhotoUrl ? _self.ownerPhotoUrl : ownerPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,ownerVerified: null == ownerVerified ? _self.ownerVerified : ownerVerified // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReportType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ReportCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocationModel,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,verificationQuestion: freezed == verificationQuestion ? _self.verificationQuestion : verificationQuestion // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationModelCopyWith<$Res> get location {
  
  return $GeoLocationModelCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

/// @nodoc
mixin _$ReportPrivateModel {

 String get reportId; String get verificationAnswerHash;
/// Create a copy of ReportPrivateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportPrivateModelCopyWith<ReportPrivateModel> get copyWith => _$ReportPrivateModelCopyWithImpl<ReportPrivateModel>(this as ReportPrivateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportPrivateModel&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.verificationAnswerHash, verificationAnswerHash) || other.verificationAnswerHash == verificationAnswerHash));
}


@override
int get hashCode => Object.hash(runtimeType,reportId,verificationAnswerHash);

@override
String toString() {
  return 'ReportPrivateModel(reportId: $reportId, verificationAnswerHash: $verificationAnswerHash)';
}


}

/// @nodoc
abstract mixin class $ReportPrivateModelCopyWith<$Res>  {
  factory $ReportPrivateModelCopyWith(ReportPrivateModel value, $Res Function(ReportPrivateModel) _then) = _$ReportPrivateModelCopyWithImpl;
@useResult
$Res call({
 String reportId, String verificationAnswerHash
});




}
/// @nodoc
class _$ReportPrivateModelCopyWithImpl<$Res>
    implements $ReportPrivateModelCopyWith<$Res> {
  _$ReportPrivateModelCopyWithImpl(this._self, this._then);

  final ReportPrivateModel _self;
  final $Res Function(ReportPrivateModel) _then;

/// Create a copy of ReportPrivateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportId = null,Object? verificationAnswerHash = null,}) {
  return _then(ReportPrivateModel(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,verificationAnswerHash: null == verificationAnswerHash ? _self.verificationAnswerHash : verificationAnswerHash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportPrivateModel].
extension ReportPrivateModelPatterns on ReportPrivateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportPrivateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportPrivateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportPrivateModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportPrivateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportPrivateModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportPrivateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reportId,  String verificationAnswerHash)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportPrivateModel() when $default != null:
return $default(_that.reportId,_that.verificationAnswerHash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reportId,  String verificationAnswerHash)  $default,) {final _that = this;
switch (_that) {
case _ReportPrivateModel():
return $default(_that.reportId,_that.verificationAnswerHash);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reportId,  String verificationAnswerHash)?  $default,) {final _that = this;
switch (_that) {
case _ReportPrivateModel() when $default != null:
return $default(_that.reportId,_that.verificationAnswerHash);case _:
  return null;

}
}

}

/// @nodoc


class _ReportPrivateModel extends ReportPrivateModel {
  const _ReportPrivateModel({required this.reportId, required this.verificationAnswerHash}): super._();
  

@override final  String reportId;
@override final  String verificationAnswerHash;

/// Create a copy of ReportPrivateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPrivateModelCopyWith<_ReportPrivateModel> get copyWith => __$ReportPrivateModelCopyWithImpl<_ReportPrivateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPrivateModel&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.verificationAnswerHash, verificationAnswerHash) || other.verificationAnswerHash == verificationAnswerHash));
}


@override
int get hashCode => Object.hash(runtimeType,reportId,verificationAnswerHash);

@override
String toString() {
  return 'ReportPrivateModel(reportId: $reportId, verificationAnswerHash: $verificationAnswerHash)';
}


}

/// @nodoc
abstract mixin class _$ReportPrivateModelCopyWith<$Res> implements $ReportPrivateModelCopyWith<$Res> {
  factory _$ReportPrivateModelCopyWith(_ReportPrivateModel value, $Res Function(_ReportPrivateModel) _then) = __$ReportPrivateModelCopyWithImpl;
@override @useResult
$Res call({
 String reportId, String verificationAnswerHash
});




}
/// @nodoc
class __$ReportPrivateModelCopyWithImpl<$Res>
    implements _$ReportPrivateModelCopyWith<$Res> {
  __$ReportPrivateModelCopyWithImpl(this._self, this._then);

  final _ReportPrivateModel _self;
  final $Res Function(_ReportPrivateModel) _then;

/// Create a copy of ReportPrivateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportId = null,Object? verificationAnswerHash = null,}) {
  return _then(_ReportPrivateModel(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,verificationAnswerHash: null == verificationAnswerHash ? _self.verificationAnswerHash : verificationAnswerHash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

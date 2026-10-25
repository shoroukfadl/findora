// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeoLocationModel {

 double get latitude; double get longitude; String get geohash; String get address;
/// Create a copy of GeoLocationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoLocationModelCopyWith<GeoLocationModel> get copyWith => _$GeoLocationModelCopyWithImpl<GeoLocationModel>(this as GeoLocationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoLocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,geohash,address);

@override
String toString() {
  return 'GeoLocationModel(latitude: $latitude, longitude: $longitude, geohash: $geohash, address: $address)';
}


}

/// @nodoc
abstract mixin class $GeoLocationModelCopyWith<$Res>  {
  factory $GeoLocationModelCopyWith(GeoLocationModel value, $Res Function(GeoLocationModel) _then) = _$GeoLocationModelCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, String geohash, String address
});




}
/// @nodoc
class _$GeoLocationModelCopyWithImpl<$Res>
    implements $GeoLocationModelCopyWith<$Res> {
  _$GeoLocationModelCopyWithImpl(this._self, this._then);

  final GeoLocationModel _self;
  final $Res Function(GeoLocationModel) _then;

/// Create a copy of GeoLocationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? geohash = null,Object? address = null,}) {
  return _then(GeoLocationModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,geohash: null == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GeoLocationModel].
extension GeoLocationModelPatterns on GeoLocationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoLocationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoLocationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoLocationModel value)  $default,){
final _that = this;
switch (_that) {
case _GeoLocationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoLocationModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeoLocationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String geohash,  String address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoLocationModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.geohash,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String geohash,  String address)  $default,) {final _that = this;
switch (_that) {
case _GeoLocationModel():
return $default(_that.latitude,_that.longitude,_that.geohash,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  String geohash,  String address)?  $default,) {final _that = this;
switch (_that) {
case _GeoLocationModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.geohash,_that.address);case _:
  return null;

}
}

}

/// @nodoc


class _GeoLocationModel extends GeoLocationModel {
  const _GeoLocationModel({required this.latitude, required this.longitude, this.geohash = '', this.address = ''}): super._();
  

@override final  double latitude;
@override final  double longitude;
@override@JsonKey() final  String geohash;
@override@JsonKey() final  String address;

/// Create a copy of GeoLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoLocationModelCopyWith<_GeoLocationModel> get copyWith => __$GeoLocationModelCopyWithImpl<_GeoLocationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoLocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,geohash,address);

@override
String toString() {
  return 'GeoLocationModel(latitude: $latitude, longitude: $longitude, geohash: $geohash, address: $address)';
}


}

/// @nodoc
abstract mixin class _$GeoLocationModelCopyWith<$Res> implements $GeoLocationModelCopyWith<$Res> {
  factory _$GeoLocationModelCopyWith(_GeoLocationModel value, $Res Function(_GeoLocationModel) _then) = __$GeoLocationModelCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, String geohash, String address
});




}
/// @nodoc
class __$GeoLocationModelCopyWithImpl<$Res>
    implements _$GeoLocationModelCopyWith<$Res> {
  __$GeoLocationModelCopyWithImpl(this._self, this._then);

  final _GeoLocationModel _self;
  final $Res Function(_GeoLocationModel) _then;

/// Create a copy of GeoLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? geohash = null,Object? address = null,}) {
  return _then(_GeoLocationModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,geohash: null == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

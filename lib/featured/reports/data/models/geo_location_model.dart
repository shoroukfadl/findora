import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/featured/reports/domain/entities/geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_location_model.freezed.dart';

/// Stored inside the report document as: location (GeoPoint), geohash, address.
@freezed
abstract class GeoLocationModel with _$GeoLocationModel {
  const GeoLocationModel._();

  const factory GeoLocationModel({
    required double latitude,
    required double longitude,
    @Default('') String geohash,
    @Default('') String address,
  }) = _GeoLocationModel;

  factory GeoLocationModel.fromReportMap(Map<String, dynamic> map) {
    final point = map['location'] as GeoPoint?;
    return GeoLocationModel(
      latitude: point?.latitude ?? 0,
      longitude: point?.longitude ?? 0,
      geohash: map['geohash'] as String? ?? '',
      address: map['address'] as String? ?? '',
    );
  }

  factory GeoLocationModel.fromEntity(GeoLocation e) => GeoLocationModel(
    latitude: e.latitude,
    longitude: e.longitude,
    geohash: e.geohash,
    address: e.address,
  );

  Map<String, dynamic> toReportMap() => {
    'location': GeoPoint(latitude, longitude),
    'geohash': geohash,
    'address': address,
  };
}

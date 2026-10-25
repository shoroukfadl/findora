import 'package:equatable/equatable.dart';

/// Location picker / map pins. [geohash] is generated when the report is created.
class GeoLocation extends Equatable {
  final double latitude;
  final double longitude;
  final String geohash;
  final String address;

  const GeoLocation({
    required this.latitude,
    required this.longitude,
    this.geohash = '',
    this.address = '',
  });

  GeoLocation copyWith({
    double? latitude,
    double? longitude,
    String? geohash,
    String? address,
  }) {
    return GeoLocation(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      geohash: geohash ?? this.geohash,
      address: address ?? this.address,
    );
  }

  @override
  List<Object?> get props => [latitude, longitude, geohash, address];
}

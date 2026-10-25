import 'package:equatable/equatable.dart';
import 'package:findora/featured/reports/domain/entities/geo_location.dart';
import 'package:findora/featured/reports/domain/entities/report_enums.dart';

class ReportFilter extends Equatable {
  final ReportType? type;
  final ReportCategory? category;
  final ReportStatus? status;
  final double radiusKm;
  final DateRangeFilter dateRange;
  final String query;
  final GeoLocation? center;

  const ReportFilter({
    this.type,
    this.category,
    this.status,
    this.radiusKm = 5,
    this.dateRange = DateRangeFilter.any,
    this.query = '',
    this.center,
  });

  static const ReportFilter initial = ReportFilter();

  bool get isDefault => this == initial;

  /// Use [clearType] / [clearCategory] to reset a nullable field.
  ReportFilter copyWith({
    ReportType? type,
    bool clearType = false,
    ReportCategory? category,
    bool clearCategory = false,
    ReportStatus? status,
    double? radiusKm,
    DateRangeFilter? dateRange,
    String? query,
    GeoLocation? center,
  }) {
    return ReportFilter(
      type: clearType ? null : (type ?? this.type),
      category: clearCategory ? null : (category ?? this.category),
      status: status ?? this.status,
      radiusKm: radiusKm ?? this.radiusKm,
      dateRange: dateRange ?? this.dateRange,
      query: query ?? this.query,
      center: center ?? this.center,
    );
  }

  @override
  List<Object?> get props => [
    type,
    category,
    status,
    radiusKm,
    dateRange,
    query,
    center,
  ];
}

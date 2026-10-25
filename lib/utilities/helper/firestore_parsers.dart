import 'package:cloud_firestore/cloud_firestore.dart';

/// Reads a date from Firestore Timestamp / DateTime / millis / ISO string.
DateTime? dateFrom(dynamic v) {
  if (v is Timestamp) return v.toDate();
  if (v is DateTime) return v;
  if (v is int) return DateTime.fromMillisecondsSinceEpoch(v);
  if (v is String) return DateTime.tryParse(v);
  return null;
}

Timestamp? tsFrom(DateTime? d) => d == null ? null : Timestamp.fromDate(d);

List<String> stringList(dynamic v) =>
    v is Iterable ? v.map((e) => e.toString()).toList() : const <String>[];

/// Safe enum parsing: falls back instead of throwing on unknown values.
T enumFrom<T extends Enum>(List<T> values, dynamic raw, T fallback) {
  for (final v in values) {
    if (v.name == raw) return v;
  }
  return fallback;
}

T? enumFromOrNull<T extends Enum>(List<T> values, dynamic raw) {
  for (final v in values) {
    if (v.name == raw) return v;
  }
  return null;
}

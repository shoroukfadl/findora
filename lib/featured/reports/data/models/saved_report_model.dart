import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findora/utilities/helper/firestore_parsers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_report_model.freezed.dart';

@freezed
abstract class SavedReportModel with _$SavedReportModel {
  const SavedReportModel._();

  const factory SavedReportModel({
    required String reportId,
    DateTime? savedAt,
  }) = _SavedReportModel;

  factory SavedReportModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) => SavedReportModel(
    reportId: doc.id,
    savedAt: dateFrom(doc.data()?['savedAt']),
  );

  Map<String, dynamic> toMap() => {'savedAt': FieldValue.serverTimestamp()};
}

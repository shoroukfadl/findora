import 'package:findora/featured/createReport/domain/entity/report_entity.dart';
import 'package:findora/featured/createReport/presentation/pages/report_form_page1.dart';
import 'package:findora/featured/createReport/presentation/pages/report_form_page2.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:flutter/material.dart';

class CreateReport extends StatefulWidget {
  static String routeName = ScreenRoutes.createReport.name;

  const CreateReport({super.key});

  @override
  State<CreateReport> createState() => _CreateReportState();
}

class _CreateReportState extends State<CreateReport> {
  int _currentPage = 1;

  // Form data using ReportEntity
  ReportEntity _report = ReportEntity(
    id: '',
    isLost: true,
    photos: [],
    title: '',
    category: '',
    description: '',
    address: '',
    dateLost: null,
    createdAt: DateTime.now(),
  );

  void _goToPage2() {
    setState(() {
      _currentPage = 2;
    });
  }

  void _goToPage1() {
    setState(() {
      _currentPage = 1;
    });
  }

  void _confirmLocation() {
    // Handle form submission with _report entity
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return (_currentPage == 1)
        ? ReportFormPage1(
            isLost: _report.isLost,
            onTypeChanged: (value) =>
                setState(() => _report = _report.copyWith(isLost: value)),
            photos: _report.photos,
            onPhotosChanged: (value) =>
                setState(() => _report = _report.copyWith(photos: value)),
            title: _report.title,
            onTitleChanged: (value) =>
                setState(() => _report = _report.copyWith(title: value)),
            category: _report.category,
            onCategoryChanged: (value) =>
                setState(() => _report = _report.copyWith(category: value)),
            description: _report.description,
            onDescriptionChanged: (value) =>
                setState(() => _report = _report.copyWith(description: value)),
            onNext: _goToPage2,
          )
        : ReportFormPage2(
            address: _report.address,
            onAddressChanged: (value) =>
                setState(() => _report = _report.copyWith(address: value)),
            dateLost: _report.dateLost,
            onDateLostChanged: (value) =>
                setState(() => _report = _report.copyWith(dateLost: value)),
            onConfirm: _confirmLocation,
          );
  }
}

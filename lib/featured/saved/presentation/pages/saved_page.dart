import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/home/presentation/widget/report_card_widget.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  static String routeName = ScreenRoutes.saved.name;

  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    final t = context.t;
    return SubLayoutWidget(
        child: ScreenLayoutWidget(
      children: [
        SecondaryAppBar(title: t.profileSaved).asPaddedSliver(),
        const ScreenSpacer(),
        _ReportsList(
          reports: [
            {
              'title': 'Black leather wallet',
              'status': 'Open',
              'distance': '1.2 km',
              'date': '2023-01-01',
              'location': '123 Main St',
            },
            {
              'title': 'Silver keys with blue tag',
              'status': 'Matched',
              'distance': '2.4 km',
              'date': '2023-01-01',
              'location': '123 Main St',
            },
          ],
        ),
      ],
    ));
  }
}

class _ReportsList extends StatelessWidget {
  final List<Map<String, String>> reports;

  const _ReportsList({required this.reports});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: reports.length,
      itemBuilder: (context, index) {
        final report = reports[index];
        return ReportCardWidget(
          title: report['title']!,
          status: report['status']!,
          distance: report['distance']!,
          date: "",
          location: "",
        );
      },
    );
  }
}

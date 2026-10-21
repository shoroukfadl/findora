import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/home/presentation/widget/filter_buttons_widget.dart';
import 'package:findora/featured/reports/presentation/widgets/report_card.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReportsPage extends StatefulWidget {
  static String routeName = 'reports';

  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.t;

    // غيّر الـ labels دي لمفاتيح الترجمة بتاعتك
    final tabs = [
      'Active', // t.reportsActive
      'Closed', // t.reportsClosed
    ];

    return ScreenLayoutWidget(
      children: [
        SecondaryAppBar(title: t.profileMyReports).asPaddedSliver(),
        const ScreenSpacer(),

        // Filter chips بدل الـ TabBar
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mobileHozPadding),
            child: ListenableBuilder(
              listenable: _tabController,
              // بيعيد البناء لما التاب يتغير (بالضغط أو بالسوايب)
              builder: (context, _) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i = 0; i < tabs.length; i++) ...[
                        if (i != 0) const SizedBox(width: 8),
                        FilterChipWidget(
                          label: tabs[i],
                          isSelected: _tabController.index == i,
                          onTap: () => _tabController.animateTo(i),
                        ),
                      ],
                    ],
                  ),
                );
              },
            ),
          ),
        ),

        const ScreenSpacer(),

        SliverFillRemaining(
          child: TabBarView(
            controller: _tabController,
            children: const [
              // Active reports
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
              // Closed reports
              _ReportsList(
                reports: [
                  {
                    'title': 'Student ID card',
                    'status': 'Returned',
                    'distance': '0.8 km',
                    'date': '2023-01-01',
                    'location': '123 Main St',
                  },
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ReportsList extends StatelessWidget {
  final List<Map<String, String>> reports;

  const _ReportsList({required this.reports});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 100),
      itemCount: reports.length,
      itemBuilder: (context, index) {
        final report = reports[index];
        return EditableReportCardWidget(
          title: report['title']!,
          status: report['status']!,
          distance: report['distance']!,

          // onEdit: () {},
          // onTap: () {},
        );
      },
    );
  }
}

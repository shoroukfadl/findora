import 'package:findora/featured/home/presentation/widget/filter_buttons_widget.dart';
import 'package:findora/featured/home/presentation/widget/home_header_widget.dart';
import 'package:findora/featured/home/presentation/widget/report_card_widget.dart';
import 'package:findora/featured/home/presentation/widget/search_bar_widget.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = ScreenRoutes.home.name;
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayoutWidget(
      children: [
        HomeHeaderWidget().asSliver(),
        const ScreenSpacer(),
        SearchBarWidget().asPaddedSliver(),
        const ScreenSpacer(),
        FilterButtonsWidget().asPaddedSliver(),
        const ScreenSpacer(),
        SliverList.builder(
            itemCount: 5,
            itemBuilder: (c, index) => ReportCardWidget(
                  title: 'Black leather wallet',
                  status: index == 0 ? 'Lost' : 'Found',
                  location: 'Downtown',
                  date: '2 hours ago',
                  distance: '0.5 km',
                ))
      ],
    );
  }
}

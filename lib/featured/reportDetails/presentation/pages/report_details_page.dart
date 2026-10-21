import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/reportDetails/presentation/widgets/actions_button.dart';
import 'package:findora/featured/reportDetails/presentation/widgets/details_warning.dart';
import 'package:findora/featured/reportDetails/presentation/widgets/report_image.dart';
import 'package:findora/featured/reportDetails/presentation/widgets/report_status_widget.dart';
import 'package:findora/featured/reportDetails/presentation/widgets/title_widget.dart';
import 'package:findora/featured/reportDetails/presentation/widgets/user_card.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReportDetailsPage extends StatefulWidget {
  static String routeName = ScreenRoutes.reportDetails.name;

  const ReportDetailsPage({super.key});

  @override
  State<ReportDetailsPage> createState() => _ReportDetailsPageState();
}

class _ReportDetailsPageState extends State<ReportDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return ScreenLayoutWidget(
      verPadding: 0,
      children: [
        ReportImage().asSliver(),
        const ScreenSpacer(),
        TitleWidget().asPaddedSliver(),
        ReportStatusWidget(currentStatus: ReportStatus.open).asSliver(),
        Text(
          "Contains an ID card and two bank cards. Small scratch on the front corner.",
          style: AppTextStyles.b14(color: colors.text1),
        ).asPaddedSliver(),
        const ScreenSpacer(),
        UserCardWidget(title: "Shorouk ").asSliver(),
        DetailsWarningCardWidget().asSliver(),
        ActionsButton().asSliver()
      ],
    );
  }
}

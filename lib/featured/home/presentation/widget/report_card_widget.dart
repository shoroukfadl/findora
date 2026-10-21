import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/constants/constants.dart';
import 'package:findora/featured/reportDetails/presentation/pages/report_details_page.dart';
import 'package:findora/shared/customWidgets/status_widget.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReportCardWidget extends StatelessWidget {
  final String title;
  final String status;
  final String location;
  final String date;
  final String distance;

  const ReportCardWidget({
    super.key,
    required this.title,
    required this.status,
    required this.location,
    required this.date,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return GestureDetector(
      onTap: () {
        context.goNamed(ReportDetailsPage.routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(
            bottom: mobileVetPadding / 2,
            right: mobileHozPadding,
            left: mobileHozPadding),
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        child: Row(
          children: [
            RoundedImage(
              width: 100,
              height: 100,
              radiusValue: fieldsRadius,
              backgroundColor: colors.surface,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StatusWidget(status: status),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: AppTextStyles.t16(color: colors.text1),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$location · $date',
                    style: AppTextStyles.b12(color: colors.text2),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    distance,
                    style: AppTextStyles.b12(color: colors.text3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

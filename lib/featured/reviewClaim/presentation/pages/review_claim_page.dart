import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/answer.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/bottom_widget.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/founder_data.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/item_header.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/my_questions.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/photos_preview.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReviewClaimPage extends StatefulWidget {
  static String routeName = ScreenRoutes.reviewClaim.name;

  const ReviewClaimPage({super.key});

  @override
  State<ReviewClaimPage> createState() => _ReviewClaimPageState();
}

class _ReviewClaimPageState extends State<ReviewClaimPage> {
  @override
  Widget build(BuildContext context) {
    final t = context.t;

    return SubLayoutWidget(
        child: ScreenLayoutWidget(
      bottom: ReviewBottomWidget(),
      children: [
        SecondaryAppBar(title: t.claimTitle).asPaddedSliver(),
        const ScreenSpacer(),
        // Item header
        ReviewItemHeader(
          title: 'Black leather wallet',
          isLost: true,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        UserFounderData().asPaddedSliver(),
        const ScreenSpacer(),
        MyQuestion(
          question: 'What is printed on the card inside the front pocket?',
        ).asPaddedSliver(),
        const ScreenSpacer(),
        // Answer input
        TheirAnswer(
          answer: 'Black',
        ).asPaddedSliver(),
        const ScreenSpacer(),
        PhotosPreview(
          images: ['', ''],
        ).asPaddedSliver(),
        const ScreenSpacer(),
      ],
    ));
  }
}

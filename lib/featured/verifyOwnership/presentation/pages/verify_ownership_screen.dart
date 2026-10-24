import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/add_photo_button.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/answer_input_field.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/bottom_widget.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/item_header.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/privacy_info.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/reporter_question.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class VerifyOwnershipScreen extends StatefulWidget {
  static String routeName = 'verifyOwnership';

  const VerifyOwnershipScreen({super.key});

  @override
  State<VerifyOwnershipScreen> createState() => _VerifyOwnershipScreenState();
}

class _VerifyOwnershipScreenState extends State<VerifyOwnershipScreen> {
  String? _answer;

  void _handleAddPhoto() {
    // TODO: Implement photo picker
  }

  void _handleSendClaim() {
    // TODO: Implement claim submission
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return SubLayoutWidget(
        child: ScreenLayoutWidget(
      bottom: BottomWidget(),
      children: [
        SecondaryAppBar(title: t.claimTitle).asPaddedSliver(),
        const ScreenSpacer(),
        // Item header
        ItemHeader(
          title: 'Black leather wallet',
          isLost: true,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        // Privacy info
        const PrivacyInfo().asPaddedSliver(),
        const ScreenSpacer(),
        // Reporter question
        ReporterQuestion(
          question: 'What is printed on the card inside the front pocket?',
        ).asPaddedSliver(),
        const ScreenSpacer(),
        // Answer input
        AnswerInputField(
          answer: _answer,
          onChanged: (value) => setState(() => _answer = value),
        ).asPaddedSliver(),
        const ScreenSpacer(),
        // Add photo button
        AddPhotoButton(
          onTap: _handleAddPhoto,
        ).asPaddedSliver(),
        const ScreenSpacer(),
      ],
    ));
  }
}

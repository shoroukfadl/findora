import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/shared/customWidgets/status_widget.dart';
import 'package:findora/shared/helper/back_button.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:flutter/material.dart';

class ReportImage extends StatelessWidget {
  const ReportImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RoundedImage(
          width: double.infinity,
          height: 280,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(cardRadius),
            bottomRight: Radius.circular(cardRadius),
          ),
        ),
        PositionedDirectional(
            top: mobileVetPadding,
            start: mobileHozPadding,
            child: CustomBackButton()),
        PositionedDirectional(
            bottom: mobileVetPadding,
            start: mobileHozPadding,
            child: StatusWidget(status: 'Lost')),
      ],
    );
  }
}

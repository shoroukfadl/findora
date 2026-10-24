import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/approve_button.dart';
import 'package:findora/featured/reviewClaim/presentation/widgets/reject_button.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReviewBottomWidget extends StatelessWidget {
  const ReviewBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: mobileHozPadding,
        vertical: mobileVetPadding / 2,
      ),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(cardRadius),
      ),
      child: Row(
        spacing: 16,
        children: [
          RejectButton().expandFlex(2),
          ApproveButton().expandFlex(3),
        ],
      ),
    );
  }
}

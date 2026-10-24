import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/reviewClaim/presentation/pages/review_claim_page.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/notification_hint.dart';
import 'package:findora/featured/verifyOwnership/presentation/widgets/send_claim_button.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
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
      child: Column(
        children: [
          SendClaimButton(
            onPressed: () {
              context.goNamed(
                ReviewClaimPage.routeName,
              );
            },
          ),
          CustomSpacer.L(),
          const NotificationHint(),
        ],
      ),
    );
  }
}

import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/blockedUsers/presentation/widget/blocked_user_card.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class BlockedUsersPage extends StatelessWidget {
  static String routeName = ScreenRoutes.blockedUsers.name;

  const BlockedUsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return ScreenLayoutWidget(children: [
      SecondaryAppBar(title: t.settingsBlockedUsers).asPaddedSliver(),
      ScreenSpacer(),
      Text(
        'Blocked users cannot message you, claim your reports, or see your reports.',
        style: AppTextStyles.b14(color: colors.text2),
      ).asPaddedSliver(),
      ScreenSpacer(),
      SliverList.separated(
        itemBuilder: (ct, item) => BlockedUserCard(),
        separatorBuilder: (ct, item) => CustomSpacer.M(),
        itemCount: 4,
      ),
    ]);
  }
}

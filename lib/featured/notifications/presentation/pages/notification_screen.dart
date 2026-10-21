import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/notifications/presentation/widget/mark_as_read_button.dart';
import 'package:findora/featured/notifications/presentation/widget/notification_card.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  static String routeName = ScreenRoutes.notifications.name;
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    return ScreenLayoutWidget(
      children: [
        SecondaryAppBar(
          title: t.settingsNotifications,
          tailWidget: MarkAsReadButton(),
        ).asPaddedSliver(),
        const ScreenSpacer(),
        Text(
          t.notificationsToday,
          style: AppTextStyles.sT14(color: context.colors.text3),
        ).asPaddedSliver(),
        CustomSpacer.xS().asSliver(),
        SliverList.separated(
            itemBuilder: (c, i) => NotificationCard(
                  isLast: true,
                ),
            separatorBuilder: (c, i) => const SizedBox(
                  height: 16,
                ),
            itemCount: 3),
        const ScreenSpacer(),
        Text(
          t.notificationsEarlier,
          style: AppTextStyles.sT14(color: context.colors.text3),
        ).asPaddedSliver(),
        CustomSpacer.xS().asSliver(),
        SliverList.separated(
            itemBuilder: (c, i) => NotificationCard(),
            separatorBuilder: (c, i) => const SizedBox(
                  height: 16,
                ),
            itemCount: 10),
      ],
    );
  }
}

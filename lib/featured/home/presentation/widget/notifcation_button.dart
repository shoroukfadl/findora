import 'package:findora/featured/notifications/presentation/pages/notification_screen.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.goNamed(NotificationPage.routeName);
      },
      child: CircleAvatar(
          radius: 22,
          backgroundColor: colors.card,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(
                Findora.notifications,
                size: 22,
                color: colors.text1,
              ),
              Positioned(
                  top: 1,
                  right: 1,
                  child:
                      CircleAvatar(backgroundColor: colors.danger, radius: 5))
            ],
          )),
    );
  }
}

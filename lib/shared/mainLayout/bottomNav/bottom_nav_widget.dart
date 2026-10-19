import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/chats/presentation/pages/chats_page.dart';
import 'package:findora/featured/home/presentation/pages/home_page.dart';
import 'package:findora/featured/profile/presentation/pages/profile_page.dart';
import 'package:findora/shared/mainLayout/bottomNav/nav_item.dart';
import 'package:findora/shared/mainLayout/bottomNav/nav_model.dart';
import 'package:findora/utilities/constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavWidget extends StatelessWidget {
  final String path;
  const BottomNavWidget({super.key, required this.path});

  static const double _barHeight = 72;
  static const double _fabSlotWidth = 88;

  List<NavModel> navItems(BuildContext context) => [
        NavModel(
          label: context.t.navHome,
          icon: Findora.findora,
          selectedIcon: Findora.findoraBold,
          route: HomePage.routeName,
        ),
        NavModel(
          label: context.t.navMap,
          selectedIcon: Findora.mapBold,
          icon: Findora.map,
          route: "",
        ),
        NavModel(
          label: context.t.navChats,
          selectedIcon: Findora.chatsBold,
          icon: Findora.chats,
          route: ChatsPage.routeName,
        ),
        NavModel(
          label: context.t.navProfile,
          selectedIcon: Findora.profileBold,
          icon: Findora.profile,
          route: ProfilePage.routeName,
        ),
      ];
  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final currentIndex = navItems(context)
        .indexWhere((item) => item.route == path.split('/').last);
    return SizedBox(
      height: _barHeight,
      width: double.infinity,
      child: Container(
          decoration: BoxDecoration(
            color: colors.card,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(cardRadius),
              topRight: Radius.circular(cardRadius),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Row(
              children: [
                for (var i = 0; i < navItems(context).length; i++) ...[
                  if (i == 2) const SizedBox(width: _fabSlotWidth),
                  Expanded(
                    child: NavItem(
                      item: navItems(context)[i],
                      isSelected: currentIndex == i,
                      onTap: () {
                        context.goNamed(navItems(context)[i].route);
                      },
                    ),
                  ),
                ],
              ],
            ),
          )),
    );
  }
}

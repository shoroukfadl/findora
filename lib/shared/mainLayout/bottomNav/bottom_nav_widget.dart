import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/home/presentation/pages/home_page.dart';
import 'package:findora/shared/mainLayout/bottomNav/nav_fab.dart';
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
  static const double _indicatorWidth = 32;
  static const double _indicatorHeight = 3;

  List<NavModel> navItems(BuildContext context) => [
        NavModel(
          label: context.t.navHome,
          icon: Findora.findora,
          route: HomePage.routeName,
        ),
        NavModel(
          label: context.t.navMap,
          icon: Findora.map,
          route: "",
        ),
        NavModel(
          label: context.t.navChats,
          icon: Findora.chats,
          route: "",
        ),
        NavModel(
          label: context.t.navProfile,
          icon: Findora.settings,
          route: "",
        ),
      ];
  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final currentIndex = navItems(context)
        .indexWhere((item) => item.route == path.split('/').first);
    return SizedBox(
      width: double.infinity,
      height: _barHeight + 28,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: _barHeight,
            child: Container(
              decoration: BoxDecoration(
                color: colors.card,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(cardRadius),
                  topRight: Radius.circular(cardRadius),
                ),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final contentWidth =
                      constraints.maxWidth - (2 * mobileHozPadding);
                  final itemWidth = (contentWidth - _fabSlotWidth) / 4;

                  final slotOffset = currentIndex >= 2 ? _fabSlotWidth : 0;
                  final centerX = mobileHozPadding +
                      (currentIndex * itemWidth) +
                      slotOffset +
                      (itemWidth / 2);

                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: Row(
                          children: [
                            for (var i = 0;
                                i < navItems(context).length;
                                i++) ...[
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
                      ),
                      AnimatedPositionedDirectional(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeOut,
                        top: 0,
                        start: centerX - (_indicatorWidth / 2),
                        child: Container(
                          width: _indicatorWidth,
                          height: _indicatorHeight,
                          decoration: BoxDecoration(
                            color: colors.accent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: const NavFab(),
          ),
        ],
      ),
    );
  }
}

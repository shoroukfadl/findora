import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/profile/presentation/widgets/profile_header.dart';
import 'package:findora/featured/profile/presentation/widgets/profile_menu_item.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/constants.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String routeName = ScreenRoutes.profile.name;
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return ScreenLayoutWidget(
      children: [
        ProfileHeaderWidget(
          displayName: 'John Doe',
          email: 'john.doe@example.com',
          isVerified: true,
        ).asPaddedSliver(),
        const ScreenSpacer(),
        SliverToBoxAdapter(
          child: Column(
            spacing: 12,
            children: [
              ProfileMenuItem(
                icon: Findora.report,
                label: t.profileMyReports,
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Findora.claims,
                label: t.profileMyClaims,
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Findora.saved,
                label: t.profileSaved,
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Findora.settings,
                label: t.profileSettings,
                onTap: () {},
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {},
                behavior: HitTestBehavior.opaque,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: mobileHozPadding,
                    ),
                    decoration: BoxDecoration(
                      color: colors.card,
                      borderRadius: BorderRadius.circular(fieldsRadius),
                    ),
                    child: Row(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Findora.logout,
                          size: 20,
                          color: colors.danger,
                        ),
                        Text(
                          t.profileLogOut,
                          style: AppTextStyles.b16(color: colors.danger),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

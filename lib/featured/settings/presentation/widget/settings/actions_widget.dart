import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/settings/presentation/widget/settings/settings_item.dart';
import 'package:findora/shared/customWidgets/segmented_button.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final tr = context.t;
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingsItem<bool>.List(
          item: SegmentOption(
            value: true,
            label: tr.settingsMessages,
          ),
          onTap: (_) {},
        ),
        SettingsItem<bool>.List(
          item: SegmentOption(
            value: false,
            label: tr.settingsClaimUpdates,
          ),
          onTap: (_) {},
        ),
        SettingsItem<bool>.List(
          item: SegmentOption(
            value: false,
            label: tr.settingsNearbyReports,
          ),
          onTap: (_) {},
        ),
      ],
    );
  }
}

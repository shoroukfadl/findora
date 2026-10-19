import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/home/presentation/widget/filter_buttons_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ChatFilterButtons extends StatelessWidget {
  const ChatFilterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Row(
      spacing: 8,
      children: [
        FilterChipWidget(
          label: t.commonAll,
          isSelected: true,
          onTap: () {},
        ),
        FilterChipWidget(
          label: t.chatsClaims,
          isSelected: false,
          onTap: () {},
        ),
        FilterChipWidget(
          label: t.chatsArchived,
          isSelected: false,
          onTap: () {},
        ),
      ],
    );
  }
}

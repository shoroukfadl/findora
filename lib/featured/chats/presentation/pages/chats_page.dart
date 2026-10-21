import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/chats/presentation/widgets/chat_card_widget.dart';
import 'package:findora/featured/chats/presentation/widgets/chat_filter_buttons.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  static String routeName = ScreenRoutes.chats.name;

  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    final t = context.t;

    return ScreenLayoutWidget(
      children: [
        Text(
          t.chatsTitle,
          style: AppTextStyles.h26(color: context.colors.text1),
        ).asPaddedSliver(),
        const ScreenSpacer(),
        ChatFilterButtons().asPaddedSliver(),
        const ScreenSpacer(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final chats = [
                {
                  'name': 'Ahmed M.',
                  'initials': 'AM',
                  'item': 'Black leather wallet',
                  'status': 'Matched',
                  'time': '6:42 PM',
                  'unread': 2,
                },
                {
                  'name': 'Sara K.',
                  'initials': 'SK',
                  'item': 'Silver keys with blue tag',
                  'status': 'Claim pending',
                  'time': 'Yesterday',
                  'unread': null,
                },
                {
                  'name': 'Nour D.',
                  'initials': 'ND',
                  'item': 'Student ID card',
                  'status': 'Returned',
                  'time': 'Mon',
                  'unread': null,
                },
              ];

              final chat = chats[index];
              return ChatCardWidget(
                name: chat['name'] as String,
                initials: chat['initials'] as String,
                itemDescription: chat['item'] as String,
                status: chat['status'] as String,
                time: chat['time'] as String,
                unreadCount: chat['unread'] as int?,
                onTap: () {},
              );
            },
            childCount: 3,
          ),
        ),
        const SizedBox(height: 100).asSliver(),
      ],
    );
  }
}

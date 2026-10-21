import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/featured/chat/presentation/widgets/chat_header_widget.dart';
import 'package:findora/featured/chat/presentation/widgets/chat_input_field.dart';
import 'package:findora/featured/chat/presentation/widgets/chat_message_bubble.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  static String routeName = ScreenRoutes.chat.name;

  final String userName;
  final String userInitials;
  final String itemDescription;
  final String status;

  const ChatPage({
    super.key,
    required this.userName,
    required this.userInitials,
    required this.itemDescription,
    required this.status,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map<String, dynamic>> _messages = [
    {
      'message': 'Hi! I think I found your wallet.',
      'isSentByMe': false,
      'time': '6:30 PM',
    },
    {
      'message': 'Thank you so much! Where can we meet?',
      'isSentByMe': true,
      'time': '6:35 PM',
    },
    {
      'message': 'The cafe on Main Street, at 6 PM?',
      'isSentByMe': false,
      'time': '6:38 PM',
    },
  ];

  bool _isTyping = false;

  @override
  Widget build(BuildContext context) {
    return SubLayoutWidget(
      child: ScreenLayoutWidget(
        verPadding: 0,
        bottom: ChatInputField(
          onSend: () {
            setState(() => _isTyping = true);
            Future.delayed(const Duration(seconds: 2), () {
              if (mounted) setState(() => _isTyping = false);
            });
          },
          isTyping: _isTyping,
        ),
        children: [
          ChatHeaderWidget().asSliver(),
          ScreenSpacer(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: mobileHozPadding),
            sliver: SliverList.separated(
              itemCount: _messages.length,
              separatorBuilder: (context, index) => CustomSpacer.L(),
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ChatMessageBubble(
                  message: message['message'] as String,
                  isSentByMe: message['isSentByMe'] as bool,
                  time: message['time'] as String,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

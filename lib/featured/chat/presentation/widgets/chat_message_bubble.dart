import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/utilities/constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ChatMessageBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final String? time;

  const ChatMessageBubble({
    super.key,
    required this.message,
    required this.isSentByMe,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 280),
        margin: EdgeInsets.only(
          bottom: 8,
          left: isSentByMe ? 48 : 0,
          right: isSentByMe ? 0 : 48,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSentByMe ? colors.accent : colors.card,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(cardRadius),
            topRight: const Radius.circular(cardRadius),
            bottomLeft: Radius.circular(isSentByMe ? cardRadius : 4),
            bottomRight: Radius.circular(isSentByMe ? 4 : cardRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: AppTextStyles.b14(
                color: isSentByMe ? Colors.white : colors.text1,
              ),
            ),
            if (time != null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  time!,
                  style: AppTextStyles.sT10(
                    color: isSentByMe
                        ? Colors.white.withValues(alpha: 0.7)
                        : colors.text3,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

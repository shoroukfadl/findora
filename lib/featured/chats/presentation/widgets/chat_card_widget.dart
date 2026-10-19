import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/utilities/constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

import 'chat_avatar.dart';

class ChatCardWidget extends StatelessWidget {
  final String name;
  final String initials;
  final String itemDescription;
  final String status;
  final String time;
  final int? unreadCount;
  final VoidCallback onTap;

  const ChatCardWidget({
    super.key,
    required this.name,
    required this.initials,
    required this.itemDescription,
    required this.status,
    required this.time,
    this.unreadCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    Color getStatusColor() {
      switch (status.toLowerCase()) {
        case 'matched':
          return colors.accent;
        case 'claim pending':
          return colors.warning;
        case 'returned':
          return colors.success;
        default:
          return colors.text3;
      }
    }

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: mobileHozPadding,
          vertical: 8,
        ),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        child: Row(
          children: [
            ChatAvatar(
              initials: initials,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: AppTextStyles.b16(color: colors.text1),
                      ),
                      const Spacer(),
                      Text(
                        time,
                        style: AppTextStyles.sT12(color: colors.text3),
                      ),
                    ],
                  ),
                  Text(
                    itemDescription,
                    style: AppTextStyles.b14(color: colors.text2),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: getStatusColor().withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(pillsRadius),
                        ),
                        child: Text(
                          status,
                          style: AppTextStyles.sT12(
                            color: getStatusColor(),
                          ),
                        ),
                      ),
                      const Spacer(),
                      if (unreadCount != null && unreadCount! > 0)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: colors.danger,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            unreadCount.toString(),
                            style: AppTextStyles.sT12(
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

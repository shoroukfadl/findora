import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/featured/chats/presentation/widgets/chat_avatar.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatHeaderWidget extends StatelessWidget {
  const ChatHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: mobileHozPadding,
        right: mobileHozPadding,
        top: mobileVetPadding,
        bottom: mobileVetPadding / 2,
      ),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.all(
          Radius.circular(cardRadius),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            child: Icon(Findora.arrowLeft, size: 20, color: colors.text1),
            onTap: () => context.pop(),
          ),
          const SizedBox(width: 8),
          ChatAvatar(
            initials: "SKE",
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "SRKOERK",
                  style: AppTextStyles.sT14(color: colors.text1),
                ),
                Text(
                  "Online",
                  style: AppTextStyles.b12(color: colors.success),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

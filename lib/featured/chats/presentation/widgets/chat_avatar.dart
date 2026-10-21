import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  final String initials;
  final String? imageUrl;
  final double size;

  const ChatAvatar({
    super.key,
    required this.initials,
    this.imageUrl,
    this.size = 32,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return CircleAvatar(
      radius: size,
      backgroundColor: colors.secondary,
      child: Center(
        child: Text(
          initials,
          style: AppTextStyles.sT14(color: colors.secondarySoft),
        ),
      ),
    );
  }
}

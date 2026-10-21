import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  final bool active;
  final Function(bool active) onTap;

  const SwitchButton({super.key, required this.onTap, this.active = false});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final size = context.matchedSize(large: 120, medium: 120, small: 40);
    return GestureDetector(
        onTap: () => onTap(!active),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: size,
          height: 24,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(cardRadius),
            color: active ? colors.accent : colors.surface,
          ),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            alignment: !active ? Alignment.centerLeft : Alignment.centerRight,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: active ? Colors.white : colors.border,
            ),
          ),
        ));
  }
}

import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/shared/customWidgets/custom_text_field.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  final VoidCallback onSend;
  final bool isTyping;

  const ChatInputField({
    super.key,
    required this.onSend,
    this.isTyping = false,
  });

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final TextEditingController _controller = TextEditingController();
  bool _hasText = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: colors.card,
        border: Border(
          top: BorderSide(
            color: colors.text3.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colors.surface,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Findora.add,
              size: 20,
              color: colors.text2,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: CustomTextField(
              borderRadius: pillsRadius,
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  _hasText = value.trim().isNotEmpty;
                });
              },
              hint: 'Type a message...',
            ),
          ),
          const SizedBox(width: 12),
          if (widget.isTyping)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                'typing...',
                style: AppTextStyles.sT12(color: colors.text3),
              ),
            ),
          GestureDetector(
            onTap: _hasText ? widget.onSend : null,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _hasText ? colors.accent : colors.surface,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Findora.send,
                size: 20,
                color: _hasText ? Colors.white : colors.text3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

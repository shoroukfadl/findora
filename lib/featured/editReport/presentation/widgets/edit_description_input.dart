import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class EditDescriptionInput extends StatelessWidget {
  final String? description;
  final Function(String) onChanged;

  const EditDescriptionInput({
    super.key,
    this.description,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: description)
            ..selection = TextSelection.fromPosition(
                TextPosition(offset: description?.length ?? 0)),
          maxLines: 4,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: 'Enter description',
            hintStyle: AppTextStyles.b15(color: colors.text3),
            filled: true,
            fillColor: colors.card,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.accent),
            ),
          ),
        ),
      ],
    );
  }
}

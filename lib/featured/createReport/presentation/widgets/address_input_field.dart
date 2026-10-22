import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class AddressInputField extends StatelessWidget {
  final String? address;
  final Function(String) onChanged;

  const AddressInputField({
    super.key,
    this.address,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createStreetAddress,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: t.createStreetAddressHint,
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
            prefixIcon: Icon(Icons.location_on_outlined, color: colors.text3),
          ),
        ),
      ],
    );
  }
}

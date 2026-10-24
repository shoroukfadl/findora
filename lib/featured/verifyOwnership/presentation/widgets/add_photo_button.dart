import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';

class AddPhotoButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddPhotoButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Findora.add,
              color: colors.accent,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              t.claimProofPhoto,
              style: AppTextStyles.sT16(color: colors.accent),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class OnboardingSlide extends StatelessWidget {
  final String title;
  final String description;
  final String? illustration;

  const OnboardingSlide({
    super.key,
    required this.title,
    required this.description,
    this.illustration,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          // Illustration placeholder
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  color: colors.surface,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: illustration != null
                    ? Image.asset(
                        illustration!,
                        fit: BoxFit.contain,
                      )
                    : Icon(
                        Icons.image_search_rounded,
                        size: 80,
                        color: colors.text3,
                      ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          // Title
          Text(
            title,
            style: AppTextStyles.h26(color: colors.text1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          // Description
          Text(
            description,
            style: AppTextStyles.b16(color: colors.text2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

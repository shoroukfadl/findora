import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/media/rounded_image_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class PhotosPreview extends StatelessWidget {
  final List<String> images;
  const PhotosPreview({super.key, this.images = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.t.claimProofPhoto,
          style: AppTextStyles.sT14(color: context.colors.text1),
        ),
        Row(
          spacing: 8,
          children: [
            ...List.generate(
                images.length,
                (index) => Expanded(
                        child: RoundedImage(
                      imagePath: images[index],
                      width: double.infinity,
                      height: 100,
                      radiusValue: 8,
                    )))
          ],
        )
      ],
    );
  }
}

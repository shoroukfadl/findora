import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class PhotosSection extends StatelessWidget {
  final List<String> photos;
  final Function(List<String> photos) onPhotosChanged;
  const PhotosSection(
      {super.key, required this.onPhotosChanged, this.photos = const []});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createPhotos(5),
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: photos.length + 1,
            itemBuilder: (context, index) {
              if (index < photos.length) {
                return Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: colors.surface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(Icons.image, color: colors.text3, size: 32),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: () {
                            final newPhotos = List<String>.from(photos);
                            newPhotos.removeAt(index);
                            onPhotosChanged(newPhotos);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: colors.danger,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.close,
                                color: colors.onAccent, size: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return GestureDetector(
                  onTap: () {
                    if (photos.length < 5) {
                      final newPhotos = List<String>.from(photos);
                      newPhotos.add('photo_${photos.length}');
                      onPhotosChanged(newPhotos);
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: colors.card,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            photos.length < 5 ? colors.border : colors.divider,
                        style: photos.length < 5
                            ? BorderStyle.solid
                            : BorderStyle.solid,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: photos.length < 5 ? colors.accent : colors.text3,
                        size: 32,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

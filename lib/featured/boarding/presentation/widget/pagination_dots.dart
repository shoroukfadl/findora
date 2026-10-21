import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class PaginationDots extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const PaginationDots({
    super.key,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: index == currentPage ? 24 : 8,
          decoration: BoxDecoration(
            color: index == currentPage ? colors.accent : colors.text3,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}

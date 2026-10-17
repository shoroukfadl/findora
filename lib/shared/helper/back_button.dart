import 'package:findora/utilities/extentions/extensions.dart';
import 'package:findora/utilities/uiHelper/findora.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return GestureDetector(
        onTap: () => context.pop(),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: colors.secondarySoft,
          child: Icon(
            Findora.arrowLeft,
            size: 18,
            color: colors.secondary,
          ),
        ));
  }
}

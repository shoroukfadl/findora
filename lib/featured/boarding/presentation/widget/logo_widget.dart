import 'package:findora/core/config/app_config.dart';
import 'package:findora/generated/assets.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double size;

  const LogoWidget({super.key, this.size = 240});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppFlavor.isDev
          ? Assets.images.logoDev.path
          : Assets.images.logoProd.path,
      width: size,
      height: size,
      fit: BoxFit.fill,
    );
  }
}

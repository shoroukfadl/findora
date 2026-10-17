// Place fonts/findora.otf in your fonts/ directory and
// add the following to your pubspec.yaml
//
// flutter:
//   fonts:
//    - family: findora
//      fonts:
//       - asset: fonts/findora.otf
import 'package:flutter/widgets.dart';

class Findora {
  Findora._();

  static const String _fontFamily = 'findora';

  static const IconData findora = IconData(0xf00c, fontFamily: _fontFamily);
  static const IconData send = IconData(0xf00a, fontFamily: _fontFamily);
  static const IconData returned = IconData(0xf009, fontFamily: _fontFamily);
  static const IconData matched = IconData(0xf008, fontFamily: _fontFamily);
  static const IconData open = IconData(0xf007, fontFamily: _fontFamily);
  static const IconData arrowRight = IconData(0xf006, fontFamily: _fontFamily);
  static const IconData arrowLeft = IconData(0xf005, fontFamily: _fontFamily);
  static const IconData add = IconData(0xf004, fontFamily: _fontFamily);
  static const IconData google = IconData(0xf003, fontFamily: _fontFamily);
  static const IconData show = IconData(0xf002, fontFamily: _fontFamily);
  static const IconData hide = IconData(0xf001, fontFamily: _fontFamily);
  static const IconData search = IconData(0xf000, fontFamily: _fontFamily);
}
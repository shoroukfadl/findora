import 'package:findora/core/config/app_config.dart';
import 'package:findora/firebase_options_prod.dart';
import 'package:findora/main.dart';

void main() {
  AppFlavor.current = Flavor.prod;
  bootstrap(DefaultFirebaseOptions.currentPlatform);
}

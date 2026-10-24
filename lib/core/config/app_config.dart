enum Flavor { dev, prod }

class AppFlavor {
  static late Flavor current;

  static bool get isDev => current == Flavor.dev;
  static bool get isProd => current == Flavor.prod;

  static String get name => isDev ? 'Findora Dev' : 'Findora';
}
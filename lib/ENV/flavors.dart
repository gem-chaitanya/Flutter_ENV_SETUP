import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';
enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;
  

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      
      case Flavor.prod:
       return dotenv.env['TITLE'] ?? 'TITLE not found';
      case Flavor.dev:
        return dotenv.env['TITLE'] ?? 'TITLE not found';
      default:
        return 'fl';
    }
  }
 bool get isDev => F.appFlavor == Flavor.dev;
 bool get isProd => F.appFlavor == Flavor.prod;
 
   static String get baseURL {
    switch (appFlavor) {
      
      case Flavor.prod:
        return dotenv.get('BASE_URL', fallback: 'Not Found');
      case Flavor.dev:
      default:
        
        return dotenv.env['BASE_URL'] ?? 'API not found';
      
    }
  }

}

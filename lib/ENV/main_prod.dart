import 'package:aatest/ENV/main_flavor.dart';
import 'flavors.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName:'.env.prod');
  buildFlavor(Flavor.prod);
}

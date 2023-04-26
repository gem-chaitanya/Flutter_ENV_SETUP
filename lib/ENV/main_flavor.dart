import 'package:aatest/ENV/app.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';
void buildFlavor(Flavor flavor){
  F.appFlavor = flavor;
  runApp(MyApp());

}
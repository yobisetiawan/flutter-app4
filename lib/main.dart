import 'package:app4/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  //tell Flutter needs to call native code before calling runApp
  WidgetsFlutterBinding.ensureInitialized();

  //prevent device orientation changes and force portrait?
  await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(const MyApp()));
}

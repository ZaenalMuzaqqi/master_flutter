import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

import 'splash.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.id,
      routes: {
        Splash.id: (context) => Splash(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {

          case Splash.id:
            return CupertinoPageRoute(builder: (context) => Splash());

          default:
            return null;

        }

      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

import 'style/open_color.dart';
import 'style/size.dart';
import 'style/icon.dart';
import 'style/text.dart';

class Splash extends StatefulWidget {
  static const String id = 'splash';


  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);


    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(

      // statusBarColor is used to set Status bar color in Android devices.
        statusBarColor: OpenColors.transparent,

        // To make Status bar icons color white in Android devices.
        statusBarIconBrightness: Brightness.light,

        // statusBarBrightness is used to set Status bar icon color in iOS.
        statusBarBrightness: Brightness.dark
      // Here light means dark color Status bar icons.

    ));

    return Scaffold(
      body: Container(
        color: OpenColors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SvgPicture.asset(
                IconX.iconDefault,
                height: 40,
                width: 40,
                semanticsLabel: 'Santri Icon',
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, top: 6),
                child: NSP28Medium(
                  color: OpenColors.black,
                  text: 'SANTRI',
                  textAlign: TextAlign.left,
                  alignment: Alignment.centerLeft,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

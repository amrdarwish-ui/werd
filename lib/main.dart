import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:werd/Pages/HomeOfAzkar.dart';
import 'package:werd/Pages/MyColors.dart';
import 'package:werd/Pages/TabBarPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'werd',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 1500,
            splash: Image.asset(
              "assets/asset.png",
            ),
            splashIconSize: double.infinity,
            nextScreen: TabBarPage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.scale,
            backgroundColor: MyColors.grey));
  }
}

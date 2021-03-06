
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_proj/views/HomePage.dart';
import 'package:flutter_proj/views/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AMH Group',
        theme: ThemeData(),
        home: SplashScreen());
  }
}
// AnimatedSplashScreen(
// nextScreen: MyHomePage(),
// splash: Container(
// width: 300,
// height: 300,
// child: Image(
// fit: BoxFit.fill,
// image: AssetImage(
// "lib/assets/images/amh.jpg",
// ),
// ),
// ),
//
// backgroundColor: Colors.black,
//
// duration: 1500,
// ),

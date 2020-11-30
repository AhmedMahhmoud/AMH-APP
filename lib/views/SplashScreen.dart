import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj/views/HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    animationController.reverse(from: 1);

    new Timer(new Duration(milliseconds: 3200), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FadeTransition(
        opacity: animationController.drive(
          CurveTween(curve: Curves.fastOutSlowIn),
        ),
        child: Center(
          child: Container(
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                "lib/assets/images/amh.jpg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

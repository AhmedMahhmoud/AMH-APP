import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj/views/ContactusScreen.dart';
import 'package:flutter_proj/views/ourCompanies.dart';
import 'package:flutter_proj/views/Partners.dart';
import 'package:flutter_proj/views/whoarewe.dart';

import 'Home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var current = 0;
  List<Widget> _screens = [
    Home(),
    OurCompaniesScreen(),
    WhoAreWe(),
    Partners(),
    ContactUsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.black45,
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xffD05028),
          onTap: (value) {
            setState(() {
              current = value;
            });
          },
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(
              Icons.apartment,
              size: 30,
            ),
            Icon(
              Icons.info_outline,
              size: 30,
            ),
            Icon(
              Icons.people,
              size: 30,
            ),
            Icon(
              Icons.chat,
              size: 30,
            ),
          ],
        ),
        body: _screens[current]);
  }
}

class InfoCards extends StatelessWidget {
  final String cardname;
  final String cardinfo;
  final IconData iconData;
  const InfoCards({
    this.cardinfo,
    this.cardname,
    this.iconData,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Color(0xffD05028),
          size: 30,
        ),
        Text(
          cardname,
          style: TextStyle(color: Color(0xffDA3444), fontSize: 18),
        ),
        Padding(
          padding: EdgeInsets.all(3),
          child: Text(
            cardinfo,
            style: TextStyle(
              height: 2,
              color: Colors.white,
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}

class AmhImagesWid extends StatelessWidget {
  final String image;
  const AmhImagesWid(
    this.image, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 2)),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

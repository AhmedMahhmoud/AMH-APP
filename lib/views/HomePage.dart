import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
  PageController _controller = PageController();
  List<Widget> _screens = [
    Home(),
    OurCompaniesScreen(),
    WhoAreWe(),
    Partners(),
    ContactUsScreen(),
  ];
  _onPageChange(int indx) {

    setState(() {
      current = indx;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          index: current,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xffD05028),
          onTap: (value) {
            setState(() {
         
              current = value;
              _controller.jumpToPage(value);
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
        body: PageView.builder(
          itemBuilder: (context, index) {
      
            return _screens[current];
          },
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          controller: _controller,
          onPageChanged: _onPageChange,
        ));
  }
}

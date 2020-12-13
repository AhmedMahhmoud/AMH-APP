import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class GoalsInfoCards extends StatelessWidget {
  final String cardname;
  final String cardinfo;
  final IconData iconData;
  const GoalsInfoCards({
    this.cardinfo,
    this.cardname,
    this.iconData,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Icon(
            iconData,
            color: Color(0xffD05028),
            size: 30,
          ),
          Text(
            cardname,
            style: TextStyle(color: Color(0xffDA3444), fontSize: 19),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              cardinfo,
              style: TextStyle(
                height: 1,
                color: Colors.white,
                fontSize: 14,
              ),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}

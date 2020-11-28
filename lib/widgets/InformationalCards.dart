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
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

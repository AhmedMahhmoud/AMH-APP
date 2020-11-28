import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmhWords extends StatelessWidget {
  final String picture;
  final String name;
  final String jobname;

  final String word;
  const AmhWords({
    this.jobname,
    this.name,
    this.picture,
    this.word,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    picture,
                  ),
                  fit: BoxFit.fill),
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.white)),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
        Text(
          jobname,
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 10),
          child: Text(
            word,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AmhImagesWid extends StatelessWidget {
  final String image;
  const AmhImagesWid(
    this.image, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: ClipRRect(
          child: InkWell(
            onTap: () => launch("http://amh-egypt.com/#portfolio"),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

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
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

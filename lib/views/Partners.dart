import 'package:flutter/material.dart';

class Partners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xffD05028),
        title: Align(
          child: Text("شركاء النجاح"),
          alignment: Alignment.topRight,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          PartnersImages(
            imageLink: "lib/assets/images/partner1.jpg",
          ),
          PartnersImagesfill(
            imageLink: "lib/assets/images/p2.jpg",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p3.png",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p4.jpg",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p5.png",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p6.png",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p7.png",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p8.png",
          ),
          PartnersImagesfill(
            imageLink: "lib/assets/images/p9.png",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p10.jpg",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p11.png",
          ),
          PartnersImages(
            imageLink: "lib/assets/images/p12.jpg",
          ),
        ],
      ),
    );
  }
}

class PartnersImages extends StatelessWidget {
  final String imageLink;

  const PartnersImages({
    this.imageLink,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              imageLink,
            ),
          )),
    );
  }
}

class PartnersImagesfill extends StatelessWidget {
  final String imageLink;

  const PartnersImagesfill({
    this.imageLink,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              imageLink,
            ),
          )),
    );
  }
}

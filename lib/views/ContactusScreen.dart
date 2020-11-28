import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' as math;

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffD05028),
          title: Align(
            child: Text("اتصل بنا"),
            alignment: Alignment.topRight,
          ),
        ),
        backgroundColor: Colors.black,
        body: Container(
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: SafeArea(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.white,
                          child: Image(
                            image: AssetImage('resources/group.png'),
                          ),
                        ),
                        Column(
                          children: [
                            MyListTile(
                              title: 'المقر الرئيسى',
                              icon: Icons.location_on,
                              link: 'https://goo.gl/maps/fVVLuBftGpDiwEHG8',
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            MyListTile(
                              title: 'فرع الشيخ زايد',
                              icon: Icons.location_on,
                              link:
                                  'https://www.google.com/maps/place/30.032931,31.006864/data=!4m6!3m5!1s0!7e2!8m2!3d30.0329305!4d31.0068636?utm_source=mstt_1',
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            MyListTile(
                              title: 'رقم التليفون',
                              icon: Icons.phone,
                              link: 'tel:+0221808809',
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            MyListTile(
                              title: 'البريد الإلكتروني',
                              icon: Icons.email,
                              link: 'mailto:info@amh-egypt.com',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircletTile(
                              link: 'https://facebook.com/',
                              icon: Typicons.social_facebook,
                            ),
                            CircletTile(
                              link: 'https://twitter.com/',
                              icon: Typicons.social_twitter,
                            ),
                            CircletTile(
                              link: 'https://instagram.com/',
                              icon: Typicons.social_instagram,
                            ),
                            CircletTile(
                              link: 'https://skype.com/',
                              icon: Typicons.social_skype,
                            ),
                            CircletTile(
                              link: 'https://linkedin.com/',
                              icon: Typicons.social_linkedin,
                            ),
                          ],
                        )
                      ]),
                ))));
  }
}

class MyListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String link;
  MyListTile({this.title, this.icon, this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: Colors.white,
      child: ListTile(
        onTap: () {
          launch(link);
        },
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 6,
                child: Text(title,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color(0xFF3b3c40),
                        fontSize: 18,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child:Transform(
                transform: Matrix4.rotationY(math.pi),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: (){},
                  icon:Icon(
                    icon,
                    color: Color(0xFF3b3c40),

                ),
              ),)

            ),
          ],
        ),
      ),
    );
  }
}

class CircletTile extends StatelessWidget {
  final IconData icon;
  final String link;
  final iconColor;
  CircletTile({this.icon, this.link, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: IconButton(
        onPressed: () {
          launch(link);
        },
        icon: Icon(
          icon,
          color: Color(0xffD05028),
        ),
      ),
    );
  }
}

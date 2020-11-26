import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      body: Stack(children: <Widget>[
        CustomScrollView(
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: (MediaQuery.of(context).size.height) ,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    constraints: BoxConstraints.expand(),
                    child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 60),
                        child: SafeArea(
                          child: Column(children: <Widget>[
                            CircleAvatar(
                              radius: 50.0,
                              backgroundColor: Colors.black,
                              child:Image(image: AssetImage('resources/group.png'),)
                              ,
                            ),
                            Text(
                              'اتصل بنا',
                              style: TextStyle(
                                fontFamily: 'Rock',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3b3c40),
                              ),
                            ),
                            Text(
                              'معلومات الاتصال',
                              style: TextStyle(
                                fontFamily: 'Source',
                                fontSize: 20.00,
                                color: Color(0xFF636c77),
                                letterSpacing: 2.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Divider(
                              color: Colors.black54,
                              thickness: 4,
                              indent: 50.0,
                              endIndent: 50.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
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
                              link: 'https://www.google.com/maps/place/30.032931,31.006864/data=!4m6!3m5!1s0!7e2!8m2!3d30.0329305!4d31.0068636?utm_source=mstt_1',
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
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircletTile(link: 'https://facebook.com/',icon: Typicons.social_facebook,),
                                CircletTile(link: 'https://twitter.com/',icon: Typicons.social_twitter,),
                                CircletTile(link: 'https://instagram.com/',icon: Typicons.social_instagram,),
                                CircletTile(link: 'https://skype.com/',icon: Typicons.social_skype,),
                                CircletTile(link: 'https://linkedin.com/',icon: Typicons.social_linkedin,),
                              ],
                            )
                          ]),
                        )),
                  );
                },
                childCount: 1,
              ),
            )
          ],
        ),
        Positioned(
          left: 4.0,
          top: 4.0,
          child: SafeArea(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFF3b3c40),
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
      ]),
    );
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
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Icon(
                icon,
                color: Color(0xFF3b3c40),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
                flex: 6,
                child: Text(title,
                    style: TextStyle(
                        color: Color(0xFF3b3c40),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
class CircletTile extends StatelessWidget {
  final IconData icon;
  final String link;
  CircletTile({ this.icon, this.link});

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
          color: Color(0xFF3b3c40),
        ),
      ),
    );
  }
}
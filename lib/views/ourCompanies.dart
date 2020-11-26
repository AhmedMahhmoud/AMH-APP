import 'package:flutter/material.dart';

class OurCompaniesScreen extends StatefulWidget {
  @override
  _OurCompaniesScreenState createState() => _OurCompaniesScreenState();
}

class _OurCompaniesScreenState extends State<OurCompaniesScreen> {
  List<Widget> widgets = [
    RoundedSlidable(
      name: "المقاولات العامة والتوريدات",
      imgPath: "resources/2.png",
      word:
          "جميع أعمال الحفر والتسويات والمحاجر .أعمال البناء والتشطيبات والديكور .أعمال الطرق والرصف",
    ),
    RoundedSlidable(
      name: "التكنولوجيا",
      imgPath: "resources/1.png",
      word:
          "تصميم وتنفيذ الحلول الذكية المتكاملة بما تشمله من تصميم للبرمجيات والدوائر الالكترونية لتقديم كافة الحلول المطلوبة لإدارة جميع أنواع الاعمال للشركات والمؤسسات ",
    ),
    RoundedSlidable(
      name: "الإستشارات المالية",
      imgPath: "resources/3.png",
      word:
          "جميع الإستشارات الأمنية والمالية للشركات والمؤسسات وتنفيذ الأنظمة الأمنية وخدمات نقل الأموال",
    ),
    RoundedSlidable(
      name: "الإستشارات الأمنية ونقل الأموال",
      imgPath: "resources/4.png",
      word:
          "جميع الإستشارات الأمنية والمالية للشركات والمؤسسات وتنفيذ الأنظمة الأمنية وخدمات نقل الأموال",
    ),
    RoundedSlidable(
      name: "النشاط الرياضي",
      imgPath: "resources/5.png",
      word:
          "ندير أكاديمية رياضية تتبني المواهب الرياضية معنا افضل المدربين والإمكانيات للوصول باللاعبين الي الاحتراف.",
    ),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: (MediaQuery.of(context).size.height),
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                return Center(child: widgets[index]);
              },
            ),
          ),
        ));
  }
}

class RoundedSlidable extends StatefulWidget {
  final name;
  final imgPath;
  final word;
  RoundedSlidable({this.name, this.imgPath, this.word});

  @override
  _RoundedSlidableState createState() => _RoundedSlidableState();
}

class _RoundedSlidableState extends State<RoundedSlidable> {
  double animationHeight = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          animationHeight != 100.0
              ? animationHeight = 100.0
              : animationHeight = 0.0;
        });
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 15, top: 15.0, left: 20.0, right: 15.0),
                  child: Container(
                    width: 500,
                    height: animationHeight + 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 20,
                            offset: Offset(0, -2))
                      ],
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              widget.name,
                              style: kSlidableTextStyle,
                            ),
                          ),
                          new AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            child: new Text(
                              widget.word,
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 16),
                            ),
                            height: animationHeight,
                            width: 200.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  top: 5.0,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const ShapeDecoration(shape: CircleBorder()),
                    child: Center(
                        child: CircleAvatar(
                      backgroundImage: AssetImage(widget.imgPath),
                      backgroundColor: Colors.black,
                      radius: 50,
                    )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

const kSlidableTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);

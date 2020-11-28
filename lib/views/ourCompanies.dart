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
      color: 0xff9E1B22,
    ),
    RoundedSlidable(
      name: "التكنولوجيا",
      imgPath: "resources/1.png",
      color: 0xff446EB4,
      word:
          "تصميم وتنفيذ الحلول الذكية المتكاملة بما تشمله من تصميم للبرمجيات والدوائر الالكترونية لتقديم كافة الحلول المطلوبة لإدارة جميع أنواع الاعمال للشركات والمؤسسات ",
    ),
    RoundedSlidable(
      name: "الإستشارات المالية",
      imgPath: "resources/3.png",
      color: 0xffD7BC28,
      word:
          "جميع الإستشارات الأمنية والمالية للشركات والمؤسسات وتنفيذ الأنظمة الأمنية وخدمات نقل الأموال",
    ),
    RoundedSlidable(
      name: "الإستشارات الأمنية ونقل الأموال",
      imgPath: "resources/4.png",
      color: 0xffC48155,
      word:
          "جميع الإستشارات الأمنية والمالية للشركات والمؤسسات وتنفيذ الأنظمة الأمنية وخدمات نقل الأموال",
    ),
    RoundedSlidable(
      name: "النشاط الرياضي",
      imgPath: "resources/5.png",
      color: 0xff3BAFAC,
      word:
          "ندير أكاديمية رياضية تتبني المواهب الرياضية معنا افضل المدربين والإمكانيات للوصول باللاعبين الي الاحتراف.",
    ),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffD05028),
          title: Align(
            child: Text("الشركات التابعة"),
            alignment: Alignment.topRight,
          ),
        ),
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
  final color;
  RoundedSlidable({this.name, this.imgPath, this.word, this.color});

  @override
  _RoundedSlidableState createState() => _RoundedSlidableState();
}

class _RoundedSlidableState extends State<RoundedSlidable>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double animationHeight = 0;
  bool onTap = false;
  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
        vsync: this, duration: Duration(seconds: 1), lowerBound: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              animationHeight != 100.0
                  ? animationHeight = 100.0
                  : animationHeight = 0.0;
              onTap = !onTap;
            });
            if (onTap) {
              _controller.forward(from: 0);
            } else {
              _controller.reverse(from: 1);
            }

            print(_controller.value);
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
                        height: 100 + (_controller.value * 100),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 20,
                                offset: Offset(0, -2))
                          ],
                          borderRadius: BorderRadius.circular(40),
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
                                  style: TextStyle(
                                      color: Color(
                                        widget.color,
                                      ),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              new AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                child: Opacity(
                                  opacity: _controller.value,
                                  child: new Text(
                                    widget.word,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 16),
                                  ),
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
                        decoration:
                            const ShapeDecoration(shape: CircleBorder()),
                        child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff4a4a4a),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 1, color: Color(widget.color)),
                            ),
                            child: Center(
                                child: CircleAvatar(
                              backgroundImage: AssetImage(widget.imgPath),
                              backgroundColor: Colors.white,
                              radius: 50,
                            ))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
class OurCompaniesScreen extends StatefulWidget {
  @override
  _OurCompaniesScreenState createState() => _OurCompaniesScreenState();
}

class _OurCompaniesScreenState extends State<OurCompaniesScreen> {

  List<Widget> widgets = [  RoundedSlidable(name: "المقاولات العامة والتوريدات",imgPath: "resources/2.png",),
    RoundedSlidable(name: "التكنولوجيا",imgPath: "resources/1.png",),
    RoundedSlidable(name: "الإستشارات المالية",imgPath: "resources/3.png",),
    RoundedSlidable(name: "الإستشارات الأمنية ونقل الأموال",imgPath: "resources/4.png",),
    RoundedSlidable(name: "النشاط الرياضي",imgPath: "resources/5.png",),];


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: (MediaQuery.of(context).size.height),
        child: Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: ListView.builder(
            itemCount: widgets.length,
            itemBuilder: (context, index) {
              return AnimatedContainer(
                curve: Curves.easeOut,
                duration: Duration(milliseconds: 400),
                height: 120,
                margin: EdgeInsets.all(8),
                child: Center(
                  child: widgets[index]
                ),
              );
            },
          ),
          ),

    ));
  }
}
class RoundedSlidable extends StatefulWidget {
final name;
final imgPath;
RoundedSlidable({this.name, this.imgPath});

  @override
  _RoundedSlidableState createState() => _RoundedSlidableState();
}

class _RoundedSlidableState extends State<RoundedSlidable> {
  double animationHeight = 0;
@override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          animationHeight!=100.0?animationHeight=100.0:animationHeight=0.0;

        });
      },
      child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 15, top: 15.0, left: 20.0, right: 15.0),
              child: Container(
                width: 500,
                height: 100.0,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.name,
                          style: kSlidableTextStyle,

                        ),
                      ),
                      new AnimatedContainer(duration: const Duration(milliseconds: 120),
                        child: new Text("Toggle Me"),
                        height: animationHeight,
                        color: Colors.tealAccent,
                        width: 100.0,
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
                decoration: const ShapeDecoration(
                     shape: CircleBorder()),
                child: Center(
                  child: CircleAvatar(backgroundImage:AssetImage(widget.imgPath),backgroundColor: Colors.black ,radius: 50,)
                ),
              ),
            )
          ],
      ),
    );
  }
}
const kSlidableTextStyle = TextStyle(
     fontSize: 16, fontWeight: FontWeight.w700);

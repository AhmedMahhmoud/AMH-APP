import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'HomePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  YoutubePlayerController _controller;
  AnimationController _animationController;

  List<Widget> amhImages = [
    AmhImagesWid("lib/assets/images/1.png"),
    AmhImagesWid("lib/assets/images/2.png"),
    AmhImagesWid("lib/assets/images/3.png"),
    AmhImagesWid("lib/assets/images/4.png"),
    AmhImagesWid("lib/assets/images/5.png"),
    InkWell(
      child: Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
          child: YoutubePlayer(
            showVideoProgressIndicator: true,
            controller: YoutubePlayerController(
              initialVideoId: "hT-UJSD9ZIk",
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
          )),
    )
  ];
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 1), lowerBound: 0);

    _animationController.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD05028),
        title: Align(
          child: Text("AMH اهلا بكم في شركه "),
          alignment: Alignment.topRight,
        ),
      ),
      backgroundColor: Colors.black,
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          _controller = YoutubePlayerController(
            initialVideoId: "hT-UJSD9ZIk",
            flags: YoutubePlayerFlags(autoPlay: true, mute: false),
          );
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      height: 150,
                      child: Swiper(
                        fade: 0.4,
                        scale: 0.5,
                        viewportFraction: 0.7,
                        itemCount: amhImages.length,
                        autoplay: true,
                        itemBuilder: (context, index) {
                          return Container(
                            child: amhImages[index],
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Card(
                            color: Colors.grey[200].withOpacity(0.1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                " الجودة العالية والحلول الإبداعية, المرونة في التنفيذ والتطوير المستمر, .حلول فعالة وذكية للمشاريع المعقدة ,الحفاظ علي ثقة العملاء، ضمان استمرارية التواصل وخدمة ما بعد البيع. هدفنا ان نكون سويا على القمة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.deepOrange),
                              ),
                            ),
                          ),
                          Divider(),
                          Divider(),
                          Container(
                              height: 250,
                              width: 400,
                              child: Opacity(
                                opacity: _animationController.value,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Color(0xff343A40),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: InfoCards(
                                        cardname: "رؤيتنا",
                                        cardinfo:
                                            "التميز بالقيادة والابداع عبر القطاعات التي نعمل بها، تقديم الخدمات بإتقان ومهنية بشكل يواكب ويفوق تطلعات جميع اصحاب المصلحة",
                                        iconData: Icons.work,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Color(0xff343A40),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: InfoCards(
                                        cardname: "هدفنا",
                                        cardinfo:
                                            "ان نكون في الصدارة في جميع النشاطات وأن نساعد في تطور وتقدم بلدنا الغالية مصر ونصل إلي العالمية",
                                        iconData: Icons.star,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Color(0xff343A40),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: InfoCards(
                                        cardname: "الرساله",
                                        cardinfo:
                                            "تحقيق الامتياز في جميع نشاطاتنا من خلال تبني أعلى معايير الحوكمة، والاستثمار في تطوير رأس المال البشري وتشجيع روح الريادة",
                                        iconData: Icons.work,
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
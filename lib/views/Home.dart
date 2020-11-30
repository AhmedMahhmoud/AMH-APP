import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/AmhImageWidget.dart';
import 'package:flutter_proj/widgets/InformationalCards.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:chewie/chewie.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // ChewieController _chewieController;
  // YoutubePlayerController utubeController;
  // // SwiperController swiperController;
  // VideoPlayerController videoPlayerController =
  //     VideoPlayerController.asset("lib/assets/videos/amhVideo.mp4");
  bool looping;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    // _chewieController = ChewieController(
    //     videoPlayerController: videoPlayerController,
    //     allowPlaybackSpeedChanging: false,
    //     autoPlay: false,
    //     looping: true);
    _animationController = AnimationController(
        duration: Duration(seconds: 1), vsync: this, lowerBound: 0);
    _animationController.forward();
    // swiperController = new SwiperController();
    // swiperController.autoplay = true;
  }

  @override
  void dispose() {
    _animationController.dispose();
    // videoPlayerController.dispose();
    // _chewieController.dispose();
    // utubeController.dispose();
    super.dispose();
  }

  var pausePLay = true;
  @override
  Widget build(BuildContext context) {
    List<Widget> amhImages = [
      GestureDetector(child: AmhImagesWid("lib/assets/images/1.png")),
      AmhImagesWid("lib/assets/images/2.png"),
      AmhImagesWid("lib/assets/images/3.png"),
      AmhImagesWid("lib/assets/images/4.png"),
      AmhImagesWid("lib/assets/images/5.png"),
      AmhImagesWid("lib/assets/images/image1.jpg"),
      AmhImagesWid("lib/assets/images/image2.jpg"),
      AmhImagesWid("lib/assets/images/image3.jpeg"),

      // Stack(
      //   children: [
      //     Chewie(
      //       controller: _chewieController,
      //     ),
      //     Positioned(
      //         top: 40,
      //         left: 80,
      //         child: GestureDetector(
      //           onTap: () {

      //             if (pausePLay) {
      //               // videoPlayerController.play();
      //               swiperController.autoplay = false;
      //               _chewieController.play();

      //             } else {
      //               _chewieController.pause();
      //               swiperController.autoplay = true;

      //             }
      //             pausePLay = !(pausePLay);
      //           },
      //           child: Container(
      //             color: Colors.red,
      //             width: 100,
      //             height: 70,
      //           ),
      //         ))
      //   ],
      // )
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffD05028),
        title: Align(
          child: Text("AMH Group"),
          alignment: Alignment.center,
        ),
      ),
      backgroundColor: Colors.black,
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          // utubeController = YoutubePlayerController(
          //   initialVideoId: "hT-UJSD9ZIk",
          //   flags: YoutubePlayerFlags(autoPlay: false, mute: false),
          // );
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
                      height: 200,
                      child: Swiper(
                        // controller: swiperController,
                        fade: 0.4,
                        scale: 0.5,

                        viewportFraction: 0.7, autoplay: true,
                        itemCount: amhImages.length,
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
                                " الجودة العالية والحلول الإبداعية, المرونة فى التنفيذ والتطوير المستمر, .حلول فعالة وذكية للمشاريع المعقدة ,الحفاظ على ثقة العملاء، ضمان استمرارية التواصل وخدمة ما بعد البيع. هدفنا ان نكون سويا على القمة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.deepOrange),
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                              height: 240,
                              width: 360,
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
                                            "التوسع جغرافيا وزيادة تنوع الأعمال لنحافظ دوما على مكانتها في مقدمة شركات المقاولات بمنطقة الشرق الأوسط وأفريقيا",
                                        iconData: Icons.work,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 250,
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Color(0xff343A40),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: InfoCards(
                                        cardname: "هدفنا",
                                        cardinfo:
                                            "التوسع في جميع أنشطة الشركة داخل السوق المحلي وخارجه\nأن نستخدم أحدث ما وصلت إليه التكنولوجيا في جميع أعمالنا\nرفع معدلات نسب الانجاز في جميع المشروعات\nريادة الشركات العامله في قطاع التشييد والبناء محلياً ودوليا",
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
                                            "هي بناء مشروعات قائمة على أعلى معايير الجودة للجهات التي نعمل معها والسعي إلى الازدهار بتقديم أحدث وسائل العمل",
                                        iconData: Icons.message,
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

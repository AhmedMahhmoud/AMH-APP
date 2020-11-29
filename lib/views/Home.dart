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
  ChewieController _chewieController;
  YoutubePlayerController utubeController;
  VideoPlayerController videoPlayerController =
      VideoPlayerController.asset("lib/assets/videos/amhVideo.mp4");
  bool looping;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        allowPlaybackSpeedChanging: false,
        autoPlay: false,
        looping: true);
    _animationController = AnimationController(
        duration: Duration(seconds: 1), vsync: this, lowerBound: 0);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    videoPlayerController.dispose();
    _chewieController.dispose();
    utubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var pausePLay = true;
    List<Widget> amhImages = [
      GestureDetector(child: AmhImagesWid("lib/assets/images/1.png")),
      AmhImagesWid("lib/assets/images/2.png"),
      AmhImagesWid("lib/assets/images/3.png"),
      AmhImagesWid("lib/assets/images/4.png"),
      AmhImagesWid("lib/assets/images/5.png"),
      GestureDetector(
          // onTap: () {
          //   setState(() {
          //     pausePLay = !pausePLay;
          //   });
          // },
          child: GestureDetector(
        onTap: () =>
            videoPlayerController.value.isPlaying ? print("yes") : print("no"),
        child: Container(
            child: GestureDetector(
          onTap: () {},
          child: Chewie(
            controller: _chewieController,

            //   showVideoProgressIndicator: true,
            //   controller: YoutubePlayerController(
            //     initialVideoId: "hT-UJSD9ZIk",
            //     flags: YoutubePlayerFlags(
            //       autoPlay: false,
            //       mute: false,
            //     ),
            //   ),
            // )),
          ),
        )),
      ))
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
          utubeController = YoutubePlayerController(
            initialVideoId: "hT-UJSD9ZIk",
            flags: YoutubePlayerFlags(autoPlay: false, mute: false),
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
                      height: 200,
                      child: Swiper(
                        fade: 0.4,
                        scale: 0.5,
                        onTap: (index) {
                          print(index);
                        },
                        viewportFraction: 0.7,
                        itemCount: amhImages.length,
                        autoplay: videoPlayerController.value.isPlaying
                            ? false
                            : true,
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
                                " الجودة العالية والحلول الإبداعية, المرونة فى التنفيذ والتطوير المستمر, .حلول فعالة وذكية للمشاريع المعقدة ,الحفاظ علي ثقة العملاء، ضمان استمرارية التواصل وخدمة ما بعد البيع. هدفنا ان نكون سويا على القمة",
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
                                            "ان نكون فى الصدارة فى جميع النشاطات وأن نساعد فى تطور وتقدم بلدنا الغالية مصر ونصل إلى العالمية",
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
                                            "تحقيق الامتياز فى جميع نشاطاتنا من خلال تبني أعلى معايير الحوكمة، والاستثمار فى تطوير رأس المال البشرى وتشجيع روح الريادة",
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

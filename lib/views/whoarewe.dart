import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class WhoAreWe extends StatelessWidget {
  List<Widget> words = [
    AmhWords(
      picture: "lib/assets/images/chairman.jpg",
      name: "مهندس محمد علي",
      jobname: "رئيس مجلس الأداره",
      word:
          " نحن نعتقد اننا وصلنا بنجاح الى مرحلة من الثقة بالنفس. الاحترام و الكرامة. و فخرنا مبني على موظفين على درجة عالية من الكفائة. و مستويات مالية متينة. و على الثقة الممنوحة لنا من العملاء و جميع الناسو دولتنا الحبيبة.",
    ),
    AmhWords(
      picture: "lib/assets/images/ceo.jpg",
      name: "مهندس احمد فرحان",
      jobname: "المدير التنفيدي",
      word:
          " ان التزامنا بأعلي المقاييس العامليه لحكومه الشركات و المماراست المهنيه العالميه يبقي دوما في صميم عملنا و بهذا استطعنا ان تطور اسلوبنا في ألأداره و ممارستنا و اجرائتنا بحيث نتمكن من تقديم كل ما هو مميز",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xffD05028),
        title: Align(
          child: Text("من نحن"),
          alignment: Alignment.bottomRight,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Swiper(
                    itemCount: 2,
                    autoplay: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return words[index];
                    },
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.grey.withOpacity(0.2),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "التأسيس عام 2007 كشركة للمقاولات والتوريدات العامة تخصصت في اعمال (التسويات و الحفر والقطع وأعمال الطرق والرصف أعمال البنية التحتية .اعمال المقاولات العامة والتوريدات العمومية )",
                      style: TextStyle(
                          color: Colors.white, fontSize: 14, letterSpacing: 1),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "ثم توسعت حجم ألاعمال فتم إنشاء باقي الشركات بالتتابع ليتم التوسع في النشاط ويشمل توريد وتركيب الأنظمة الأمنية . أعمال التشطيبات . تحلية المياة . الأستشارات المالية . الأستشارات الأمنية ونقل الأموال .توريد وتركيب الأنظمه الذكية . الحلول التقنية والبرمجيات وأخيرا الأنشطة الرياضية",
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, letterSpacing: 1),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AmhWords extends StatelessWidget {
  final String picture;
  final String name;
  final String jobname;

  final String word;
  const AmhWords({
    this.jobname,
    this.name,
    this.picture,
    this.word,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    picture,
                  ),
                  fit: BoxFit.fill),
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.white)),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
        Text(
          jobname,
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 10),
          child: Text(
            word,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

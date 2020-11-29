import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/AmhWordsWidget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class WhoAreWe extends StatelessWidget {
  List<Widget> words = [
    AmhWords(
      picture: "lib/assets/images/chairman.jpg",
      name: "مهندس محمد علي",
      jobname: "رئيس مجلس الأداره",
      word:
          "فى هذه الفترة التى نمر بها جميعا تحتاج مصر إلى العديد من المشروعات الواعدة لبناء دولة حديثة وعصرية ونحن فى ايه ام اتش جروب نجد فى أنفسنا المقدرة على تقديم كافة الخدمات والحلول الابتكارية التى تساهم فى تحقيق الرؤية الوطنية، فنحن نمتلك كافة الأدوات اللازمة التى تجعلنا قادرين على تنفيذ متطلبات كافة عملائنا فى أسرع وقت وبنسبة انجاز تفوق التوقعات. نمتلك أيضاً مجموعة من التحالفات الاقتصادية مع كبرى الشركات الدولية فى العديد من المجالات الهامة مثل مجال تحلية مياه البحر باستخدام أحدث التكنولوجيا ومشروعات الخرسانة الجاهزة للمشروعات القومية الكبرى وغيرها مما يؤكد أننا نسير على طريق التميز بين العديد من الشركات العاملة فى نفس المجال.مستمرون فى تقيدم خدماتنا بامتياز.. فطريق النجاح قد بدأناه ولن نتوقف مهما كانت الصعاب",
    ),
    AmhWords(
      picture: "lib/assets/images/ceo.jpg",
      name: "مهندس احمد فرحان",
      jobname: "المدير التنفيدي",
      word:
          " ان التزامنا بأعلي المقاييس العامليه لحكومه الشركات و المماراست المهنيه العالميه يبقي دوما فى صميم عملنا و بهذا استطعنا ان تطور اسلوبنا فى ألأداره و ممارستنا و اجرائتنا بحيث نتمكن من تقديم كل ما هو مميز",
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 420,
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
                    padding: EdgeInsets.all(12),
                    child: Text(
                      ("ترجع نواة المجموعة إلى عام 2007م حيث تأسست أول شركاتها باسم شركة ايه إم اتش للمقاولات العامة والتوريدات على يد المهندس / محمد علي سعد رئيس مجلس إدارة المجموعة الحالي وتطورت لتبرز نفسها كأحد الشركات الرائدة فى مجال المقاولات والتوريدات العامة بمصر واستطاعت فى فترة وجيزة أن تنفذ عدد لا محدود من المشروعات "),
                      style: TextStyle(
                          color: Colors.white, fontSize: 13, letterSpacing: 1),
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

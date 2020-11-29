import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/AmhWordsWidget.dart';

class WhoAreWe extends StatefulWidget {
  @override
  _WhoAreWeState createState() => _WhoAreWeState();
}

class _WhoAreWeState extends State<WhoAreWe> {
  int currentWordIndex = 0;

  List<Widget> words = [
    AmhWords(
      picture: "lib/assets/images/chairman.jpg",
      name: "مهندس محمد على",
      jobname: "رئيس مجلس الأداره",
      word:
          "قد كانت الرؤية المشتركة لمؤسسى شركة ايه ام اتش جروب هى خلق كيان اعتبارى ضخم يساهم في تنفيذ مشاريع التنمية بدولة جمهورية مصر العربية ونيل ثقة كل من نعمل معهم ومن أجلهم وذلك خلال تنفيذ مشاريعنا باعلى معايير الحرفية والمهنية وأخلاقيات العمل. وعليه كانت مهمتنا الأساسية ولا تزال هى المحافظة على الجودة فى العمل لضمان رضا وثقة عملائنا والحفاظ على السمعة الحسنة لمجموعة ايه ام اتش. فى النهاية لا يسعنى إلى أن أشكر كل من ملاك المشاريع الحالية والمستقبلية الحكومية منها والأهلية ومقاولى الباطن وشركاؤنا وأفراد عائلة شركة ايه ام اتش جروب . مستمرون فى تقديم خدماتنا بامتياز.. فطريق النجاح قد بدأناه ولن نتوقف مهما كانت الصعاب",
    ),
    AmhWords(
      picture: "lib/assets/images/ceo.jpg",
      name: "مهندس احمد فرحان",
      jobname: "المدير التنفيذى",
      word:
          " ان التزامنا بأعلى المقاييس العالميه لحكومه الشركات و المماراست المهنيه العالميه يبقى دوما فى صميم عملنا و بهذا استطعنا ان نطور اسلوبنا فى الإداره و ممارستنا و اجرائتنا بحيث نتمكن من تقديم كل ما هو مميز",
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
                  height: 350,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        currentWordIndex = index;
                      });
                    },
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return words[index];
                    },
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10.0),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                currentWordIndex == 0
                                    ? CircularIndicator(true)
                                    : CircularIndicator(false),
                                SizedBox(
                                  width: 1.5,
                                ),
                                currentWordIndex == 1
                                    ? CircularIndicator(true)
                                    : CircularIndicator(false),
                              ],
                            ),
                          ),
                        ])),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.grey.withOpacity(0.2),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      ("ترجع نواة المجموعة إلى عام 2007م حيث تأسست أول شركاتها باسم شركة ايه إم اتش للمقاولات العامة والتوريدات على يد المهندس / محمد على سعد رئيس مجلس إدارة المجموعة الحالى وتطورت لتبرز نفسها كأحد الشركات الرائدة فى مجال المقاولات والتوريدات العامة بمصر، واستطاعت فى فترة وجيزة أن تنفذ عدد لا محدود من المشروعات. وفى عام 2020م انضمت شركتي ايه ام اتش تو للاستثمار العقارى واستصلاح الأراضى وايه ام اتش ثرى لتجارة الأدوية والمستلزمات الطبية لتشكل الصورة الحالية للمجموعة."),
                      style: TextStyle(
                          color: Colors.white, fontSize: 12, letterSpacing: 1),
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

class CircularIndicator extends StatelessWidget {
  final bool isIndex;
  CircularIndicator(this.isIndex);

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        height: isIndex ? 15.0 : 10.0,
        width: isIndex ? 15.0 : 10.0,
        decoration: BoxDecoration(
          color: isIndex ? Color(0xffD05028) : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ));
  }
}

import 'package:flutter/material.dart';

class ButtomSheetClass extends StatefulWidget {
  @override
  _ButtomSheetClassState createState() => _ButtomSheetClassState();
}

class _ButtomSheetClassState extends State<ButtomSheetClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(20),
      children: [
        Row(
          children: [
            Expanded(
              flex: 80,
              child: Text(
                "للمساعدة",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                flex: 20,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () => Navigator.pop(context),
                ))
          ],
        ),
        Text(
          """ اذا كنت من الحريصين على ذكر الله دوما في الصباح وفي المساء ، حمل تطبيق السبحة الالكترونية ، الذي يغنيك عن المسبحة التقليدية .
لا داعي لتحمل السبحة العادية معك ، فمع تطبيق المسبحة الالكترونية ، وداعا لنسيان المسبحة التقليدية في المنزل .
مع برنامج السبحة الذكية الالكترونية ما عليك الا التسبيح والسبحة الذكية عليها العد الكترونيا .
لاتفكر ولا تحتار ذكر الله هو الخيار .
مع تطبيق سبحة انت دائما الى الله اقرب ، و أنتم دائما على موعد مع التسبيح والاستغفار والصلاة على النبي "عليه أفضل الصلاة والتسليم " .
تحميل السبحة الالكترونية للجوال سهل جدا ، حيث ان حجمه خفيف جدا ومناسب لكل الاجهزة .
ما عليك سوى اختيار التسبيحة التي تريدها ، ما اذا كانت سبحان الله ، الحمدلله ، لا اله الا الله ، الله أكبر أو حتى ذكر الصلاة على النبي "عليه أفضل الصلاة والتسليم "
ثم تبدأ بالعد من خلال الضغط على زر العد كلما ذكرت التسبيحة المختارة .
شارك اصدقائك واصحابك الأجر من خلال مشاركة التطبيق معهم ، كما يمكنك التسبيح والاستغفار ومشاركة عدد المرات التي قمت بها بذلك معهم ومن خلال مواقع التواصل الاجتماعي .
قال النبي صلى الله عليه وسلم : الدال على الخير كفاعله .
لا تنسونا من صالح دعائكم . """,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ));
  }
}

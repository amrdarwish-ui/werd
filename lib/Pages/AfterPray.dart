import 'package:flutter/material.dart';
import 'package:werd/Pages/ButtomSheetclas.dart';
import 'package:werd/Pages/MyColors.dart';
import 'package:werd/wedgets/newitemcard.dart';

class AfterPray extends StatefulWidget {
  AfterPray({Key key}) : super(key: key);

  @override
  _AfterPrayState createState() => _AfterPrayState();
}

class _AfterPrayState extends State<AfterPray>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        centerTitle: true,
        title: Text("أذكار الصباح",
            style:
                TextStyle(color: MyColors.white, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              icon: Icon(
                Icons.info_outline,
                color: MyColors.white,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return ButtomSheetClass();
                    });
              })
        ],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: MyColors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      backgroundColor: MyColors.grey,
      body: Center(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            NewItemCard(txt: "أَسْـتَغْفِرُ الله", count: 3),
            NewItemCard(
                txt:
                    "اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام",
                count: 1),
            NewItemCard(
                txt:
                    "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ ، لهُ المُـلْكُ ولهُ الحَمْد ، وهوَ على كلّ شَيءٍ قَدير",
                count: 1),
            NewItemCard(
                txt:
                    "اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت ، وَلا مُعْطِـيَ لِما مَنَـعْت ، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد",
                count: 1),
            NewItemCard(
                txt:
                    "لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ ، لهُ الملكُ ولهُ الحَمد ، وهوَ على كلّ شيءٍ قدير",
                count: 1),
            NewItemCard(
                txt:
                    "لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ ، لا إلهَ إلاّ اللّـه ، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن",
                count: 1),
            NewItemCard(
                txt:
                    "لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون",
                count: 1),
            NewItemCard(txt: "سُـبْحانَ اللهِ", count: 33),
            NewItemCard(txt: "الحَمْـدُ لله", count: 33),
            NewItemCard(txt: "اللهُ أكْـبَ", count: 33),
            NewItemCard(
                txt:
                    "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ ، لهُ الملكُ ولهُ الحَمْد ، وهُوَ على كُلّ شَيءٍ قَـدير",
                count: 3)
          ],
        ),
      )),
    );
  }
}

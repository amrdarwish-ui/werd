import 'dart:io';

import 'package:flutter/material.dart';
import 'package:werd/Pages/ButtomSheetclas.dart';
import 'package:werd/Pages/AzkarSabah.dart';

import 'AfterPray.dart';
import 'AzkarMasaa.dart';
import 'MyColors.dart';
import 'Sleep.dart';

class HomeOfAzkar extends StatefulWidget {
  HomeOfAzkar({Key key}) : super(key: key);

  @override
  _HomeOfAzkarState createState() => _HomeOfAzkarState();
}

class _HomeOfAzkarState extends State<HomeOfAzkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            width: 70,
            child: Card(
              color: MyColors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AzkarSabah();
                    }));
                  },
                  splashColor: MyColors.grey,
                  child: GridTile(
                    child: Center(
                      child: Text(
                        "أذكار الصباح",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            width: 70,
            child: Card(
              color: MyColors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AzkarMasaa();
                    }));
                  },
                  splashColor: MyColors.grey,
                  child: GridTile(
                    child: Center(
                      child: Text(
                        "اذكار المساء",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            width: 70,
            child: Card(
              color: MyColors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Sleep();
                    }));
                  },
                  splashColor: MyColors.grey,
                  child: GridTile(
                    child: Center(
                      child: Text(
                        "أذكار النوم",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 120,
            width: 70,
            child: Card(
              color: MyColors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AfterPray();
                    }));
                  },
                  splashColor: MyColors.grey,
                  child: GridTile(
                    child: Center(
                      child: Text(
                        "اذكار بعد الصلاه",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

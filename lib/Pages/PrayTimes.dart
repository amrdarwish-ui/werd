import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:werd/Pages/MyColors.dart';

import 'OneTime.dart';

class PrayTime extends StatefulWidget {
  PrayTime({Key key}) : super(key: key);

  @override
  _PrayTimeState createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  TextStyle styleDate = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

  Future<void> getTimes() async {
    var url = "https://api.pray.zone/v2/times/today.json?city=cairo";
    var response = await http.get(url);
    var responsebody = json.decode(response.body)["results"]["datetime"][0];
    List<String> list = [];
    list.add(responsebody["times"]["Fajr"]);
    list.add(responsebody["times"]["Sunrise"]);
    list.add(responsebody["times"]["Dhuhr"]);
    list.add(responsebody["times"]["Asr"]);
    list.add(responsebody["times"]["Maghrib"]);
    list.add(responsebody["times"]["Isha"]);
    list.add(responsebody["date"]["gregorian"]);
    list.add(responsebody["date"]["hijri"]);
    print(list);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: FutureBuilder(
          future: getTimes(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.black),
                ),
              );
            } else {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${snapshot.data[6]}",
                          style: styleDate,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "التاريخ الميلادى",
                          style: styleDate,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${snapshot.data[7]}",
                          style: styleDate,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "التاريخ الهجرى",
                          style: styleDate,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        Text(
                          "مواقيت الصلاة",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(),
                    OneTime(
                      salah: "الفجر",
                      time: snapshot.data[0],
                      picSrc:
                          "https://mediaaws.almasryalyoum.com/news/large/2019/08/05/960224_0.jpg",
                    ),
                    OneTime(
                        time: snapshot.data[1],
                        salah: "الشروق",
                        picSrc:
                            "http://3.bp.blogspot.com/-uyZ7l8oJ8BM/TsVLU8pLYoI/AAAAAAAAALQ/yJTEjhL7Mco/s1600/pink-sky3.jpg"),
                    OneTime(
                        time: snapshot.data[2],
                        salah: "الظهر",
                        picSrc:
                            "https://static.almosaly.com/image20180401153707345.jpg"),
                    OneTime(
                        time: snapshot.data[3],
                        salah: "العصر",
                        picSrc:
                            "https://modo3.com/thumbs/fit630x300/41968/1442014085/%D9%85%D8%AA%D9%89_%D9%8A%D9%83%D9%88%D9%86_%D9%88%D9%82%D8%AA_%D8%A7%D9%84%D8%B2%D9%88%D8%A7%D9%84.jpg"),
                    OneTime(
                        time: snapshot.data[4],
                        salah: "المغرب",
                        picSrc:
                            "https://www.hazemsakeek.net/wp-content/uploads/sky-dawn-morning-214886.jpg"),
                    OneTime(
                        time: snapshot.data[5],
                        salah: "العشاء",
                        picSrc:
                            "https://modo3.com/thumbs/fit630x300/131545/1477878690/%D9%85%D8%AA%D9%89_%D8%AA%D9%83%D9%88%D9%86_%D8%B5%D9%84%D8%A7%D8%A9_%D8%A7%D9%84%D9%81%D8%AC%D8%B1.jpg"),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

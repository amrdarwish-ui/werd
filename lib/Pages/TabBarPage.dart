import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:werd/Pages/HomeOfAzkar.dart';
import 'package:werd/Pages/PrayTimes.dart';
import 'ButtomSheetclas.dart';
import 'MyColors.dart';
import 'SebhaPage.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  final tabList = ['السبحة ', 'الأذكار'];
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        centerTitle: true,
        title: Text("وِرد",
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
            icon: Text(
              """مواقيت
الصلاه""",
              style: TextStyle(fontSize: 12),
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return PrayTime();
                },
              );
            }),
        bottom: TabBar(
          controller: _tabController,
          labelColor: MyColors.white,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          indicator: PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: MyColors.white,
            insets: EdgeInsets.only(bottom: 10),
          ),
          tabs: tabList.map((item) {
            return Tab(
              text: item,
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
          controller: _tabController, children: [SebhaPage(), HomeOfAzkar()]),
    );
  }
}

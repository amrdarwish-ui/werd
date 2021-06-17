import 'package:flutter/material.dart';

import '../Pages/MyColors.dart';

class NewItemCard extends StatefulWidget {
  String txt;
  int count;
  NewItemCard({Key key, @required this.txt, @required this.count})
      : super(key: key);

  @override
  _NewItemCardState createState() => _NewItemCardState(txt: txt, count: count);
}

class _NewItemCardState extends State<NewItemCard> {
  _NewItemCardState({this.txt, this.count});

  int count;
  String txt;
  String buttonTxt;
  int buttomColor = 0xff008000;
  int buttonColor2 = 0xffb30000;
  @override
  void initState() {
    buttonTxt = "$count";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Card(
            color: MyColors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: InkWell(
                onTap: () {},
                splashColor: MyColors.grey.withAlpha(200),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("$txt",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: MyColors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                        minWidth: MediaQuery.of(context).size.width / .5,
                        height: 48,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        color: Color(buttomColor),
                        onPressed: () {
                          if (count != 0) {
                            setState(() {
                              count--;
                              buttonTxt = "$count";
                            });
                          }
                          if (count == 0) {
                            setState(() {
                              buttomColor = buttonColor2;
                              buttonTxt = "تم";
                            });
                          }
                        },
                        child: Text(
                          "$buttonTxt",
                          style: TextStyle(color: MyColors.white, fontSize: 26),
                        )),
                  ],
                )))
      ],
    );
  }
}

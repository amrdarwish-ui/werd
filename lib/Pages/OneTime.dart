import 'package:flutter/material.dart';

class OneTime extends StatelessWidget {
  String picSrc;
  String time;
  String salah;
  TextStyle styleTime = TextStyle(
      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 18);

  OneTime(
      {Key key,
      @required this.time,
      @required this.salah,
      @required this.picSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Text(
                "${time}",
                style: styleTime,
              ),
              flex: 30,
            ),
            Expanded(
              child: Text(
                "$salah",
                style: styleTime,
              ),
              flex: 12,
            ),
            Expanded(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage("$picSrc"))),
              ),
              flex: 8,
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}

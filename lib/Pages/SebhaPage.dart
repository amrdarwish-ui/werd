import 'package:flutter/material.dart';
import 'package:werd/Pages/MyColors.dart';

class SebhaPage extends StatefulWidget {
  SebhaPage({Key key}) : super(key: key);

  @override
  _SebhaPageState createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  int _counter = 0;

  ///will be used in the سبح button///
  void increase() {
    setState(() {
      _counter++;
    });
  }

  ///will be used in the تصفير button///

  void zero() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.white,
        body: Center(
          child: Column(
            ///to make the column in the center of the screen///
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$_counter",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),

                ///to make a curves to the button///
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  increase();
                },
                child: Text("سبح",
                    style: TextStyle(
                        color: MyColors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                color: Colors.black,
                minWidth: 150,
                height: 75,
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  zero();
                },
                child: Text("تصفير",
                    style: TextStyle(
                        color: MyColors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                color: Colors.black,
                minWidth: 150,
                height: 75,
              ),
            ],
          ),
        ));
  }
}

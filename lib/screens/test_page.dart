import 'package:avenger_information/widgets/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
        backgroundColor: Colors.yellow[100],
        body: Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.clip,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 60 - 35.0 - 7, top: 56 + 12.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 80,
              color: Colors.grey[300],
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text('$index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index'
                      '   $index');
                },
                itemCount: 100,
              ),
            ),
//            Align(
//              alignment: Alignment(0, -1),
//              child: SizedBox(
//                height: 70,
//                width: 70,
//                child: Material(
//                  shape: BeveledRectangleBorder(
//                      borderRadius:
//                      BorderRadius.all(Radius.circular(70 / 2 - 3))),
//                  elevation: 10,
//                  color: Colors.grey,
//                  child: InkWell(
//                    customBorder: BeveledRectangleBorder(
//                        borderRadius:
//                        BorderRadius.all(Radius.circular(70 / 2 - 3))),
//                    onTap: () {},
//                    child: Container(
//                      padding: EdgeInsets.all(70 / 4),
//                      child: Image.asset(
//                        'assets/images/ic_loading.png',
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                color: Colors.transparent,
                height: 56 + 12.0,
                child: Material(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)))),
              ),
            ),
            BottomNavBar(),
          ],
        ));
  }
}

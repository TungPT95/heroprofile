import 'package:avenger_information/widgets/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[100],
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(bottom: 80),
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 80,
              color: Colors.grey[300],
              child: RaisedButton(
                onPressed: () {},
                child: Text('button ne'),
              ),
            ),
            Align(
              alignment: Alignment(0, -1),
              child: SizedBox(
                height: 70,
                width: 70,
                child: Material(
                  shape: BeveledRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(70 / 2 - 3))),
                  elevation: 10,
                  color: Colors.grey,
                  child: InkWell(
                    customBorder: BeveledRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(70 / 2 - 3))),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(70 / 4),
                      child: Image.asset(
                        'assets/images/ic_loading.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            BottomNavBar(),
          ],
        ));
  }
}

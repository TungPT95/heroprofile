import 'package:avenger_information/screens/character_list/character_list_page.dart';
import 'package:avenger_information/widgets/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.clip,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 50),
              child: PageView(
                pageSnapping: true,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                children: <Widget>[
                  CharactersPage(),
                ],
              ),
            ),
            BottomNavBar(),
          ],
        ));
  }
}

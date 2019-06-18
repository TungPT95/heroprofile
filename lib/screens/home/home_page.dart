import 'package:avenger_information/widgets/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../characters_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 2,
    );
  }

  final _title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$_title'),
          brightness: Brightness.dark,
          backgroundColor: Color(0xFF58060A),
        ),
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
                  Container(
                    child: Center(child: Text('Chapters')),
                  ),
                  Container(
                    child: Center(child: Text('Videos')),
                  ),
                  CharactersPage(),
                  Container(
                    child: Center(child: Text('Others')),
                  ),
                  Container(
                    child: Center(child: Text('About')),
                  ),
                ],
              ),
            ),
            BottomNavBar(),
          ],
        ));
  }
}

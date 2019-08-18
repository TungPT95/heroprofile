import 'package:flutter/material.dart';
import 'package:hero_profile/screens/about/about_page.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/screens/characters/characters_page.dart';
import 'package:hero_profile/screens/comics_list/comics_list_page.dart';
import 'package:hero_profile/screens/movies/movie_list/movie_list_page.dart';
import 'package:hero_profile/widgets/bottom_navigation_bar/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 2,
    );
    super.initState();
  }

  int _currentIndex = 2;
  List<String> _pageTitles = ['Comics', 'Videos', 'Heroes', 'Movies', 'About'];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String _title = _pageTitles[_currentIndex];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            overflow: Overflow.clip,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/bg_home.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              PageView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: <Widget>[
                  ComicsListPage(),
                  Container(
                    child: Center(child: Text(_title)),
                  ),
                  CharactersPage(),
                  MovieListPage(),
                  AboutPage(),
                ],
              ),
              BottomNavBar(
                currentIndex: _currentIndex,
                bottomNavItemClickCallback: (index, title) {
                  _pageController.animateToPage(index,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.linear);
                },
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 56,
                child: Center(
                    child: Text(_title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
              ),
            ],
          ),
        ));
  }
}

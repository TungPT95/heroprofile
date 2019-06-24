import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/repository/entertainments/comics_repos.dart';
import 'package:hero_profile/widgets/comic_item.dart';

class ComicsList extends StatefulWidget {
  @override
  _ComicsListState createState() => _ComicsListState();
}

class _ComicsListState extends State<ComicsList> {
  ComicsRepos _repos = ComicsRepos();
  List<Comic> _list = [];
  PageController _pageController;
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController()
      ..addListener(() {
        debugPrint(_pageController.page.toString());
        debugPrint('floor: ${_pageController.page.floor()}');
        setState(() {
          _currentPage = _pageController.page;
        });
      });
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final halfOfScreenWidth = MediaQuery.of(context).size.width;
    final wantedPercent = 100 / 100;

    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
//          debugPrint('animate index: $index');
//          debugPrint('animate index _currentPage: $_currentPage');
//          debugPrint('animate _currentPage.floor: ${_currentPage.floor()}');
//          debugPrint('animate index percent: ${index - _currentPage}');
//          debugPrint('animate -percent: ${_currentPage - index.abs()}');
          final percent = (index - _currentPage).abs();
          if (index == _currentPage.floor()) {
            final scale = 1 - percent;
            final trans = percent * halfOfScreenWidth;
            return Opacity(
              opacity: 1 - percent,
              child: Transform.translate(
                offset: Offset(trans, 0),
                child: Transform.scale(
                  scale: scale < 1 && scale > wantedPercent
                      ? scale
                      : wantedPercent,
                  child: ComicItem(_list[index]),
                ),
              ),
            );
          } else {
            return ComicItem(_list[index]);
          }
        },
        controller: _pageController,
        itemCount: _list.length,
      ),
    );
  }

  void getData() async {
    _list = await _repos.getComics();
    setState(() {});
  }
}

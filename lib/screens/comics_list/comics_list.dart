import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/repository/entertainments/comics_repos.dart';

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
                  child: buildItem(_list[index]),
                ),
              ),
            );
          } else {
            debugPrint('');
            return buildItem(_list[index]);
          }
        },
        controller: _pageController,
        itemCount: _list.length,
      ),
    );
  }

  Widget buildItem(Comic item) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 1 / 15,
          bottom: MediaQuery.of(context).size.height * 1 / 20,
          right: 10,
          left: 10),
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 8,
        child: Container(
          color: Colors.white,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Image.network(
                item.imgPath,
                fit: BoxFit.fitHeight,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 1 / 5.5,
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.only(bottom: 15,left: 8,right: 8),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1 / 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        item.title,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      Text(
                        '${item.desc}',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getData() async {
    _list = await _repos.getComics();
    setState(() {});
  }
}
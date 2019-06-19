import 'package:flutter/material.dart';
import 'package:hero_profile/models/entertainment.dart';
import 'package:hero_profile/repository/entertainments/entertainment_repos.dart';

class EntertainmentsList extends StatefulWidget {
  @override
  _EntertainmentsListState createState() => _EntertainmentsListState();
}

class _EntertainmentsListState extends State<EntertainmentsList> {
  EntertainmentsRepos _repos = EntertainmentsRepos();
  List<Entertainment> _list = [];
  PageController _pageController;
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController()
      ..addListener(() {
        print(_pageController.page);
        print('floor: ${_pageController.page.floor()}');
        setState(() {
          _currentPage = _pageController.page;
        });
      });
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          if (index == _currentPage.floor()) {
            return Transform.scale(
              scale: (index - _currentPage) /2,
              child: buildItem(_list[index]),
            );
          } else if (index == _currentPage.floor() + 1) {
            return Transform.scale(
              scale: (index - _currentPage) / 2,
              child: buildItem(_list[index]),
            );
          } else if (index == _currentPage.floor() - 1) {
            return Transform.scale(
              scale: (_currentPage - index) / 2,
              child: buildItem(_list[index]),
            );
          } else {
            return buildItem(_list[index]);
          }
        },
        controller: _pageController,
        itemCount: _list.length,
      ),
    );
  }

  Card buildItem(Entertainment item) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 1 / 7,
          bottom: MediaQuery.of(context).size.height * 1 / 7,
          left: 10,
          right: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      elevation: 8,
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image.network(
              item.imgPath,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                item.title,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void getData() async {
    _list = await _repos.getEntertainments();
    setState(() {});
  }
}

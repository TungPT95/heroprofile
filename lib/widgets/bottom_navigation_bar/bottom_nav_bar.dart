import 'dart:math';

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final BottomNavItemClickCallback bottomNavItemClickCallback;
  final int currentIndex;

  BottomNavBar({this.currentIndex = 0, this.bottomNavItemClickCallback})
      : assert(currentIndex >= 0);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomNavItemClickCallback get _bottomNavItemClickCallback =>
      widget.bottomNavItemClickCallback;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 60,
            color: Colors.white,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavItem(
              'Comics',
              icAsset: 'assets/images/ic_nav_comic.png',
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 0,
            ),
            BottomNavItem(
              'Videos',
              icAsset: 'assets/images/ic_nav_video.png',
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 1,
            ),
            BottomNavCenterItem(
              title: 'Home',
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 2,
            ),
            BottomNavItem(
              'Parts',
              icAsset: 'assets/images/ic_nav_part.png',
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 3,
            ),
            BottomNavItem(
              'About',
              icAsset: 'assets/images/ic_nav_about.png',
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 4,
            )
          ],
        ),
      ],
    );
  }
}

typedef BottomNavItemClickCallback = void Function(int index, String title);

abstract class BottomNavBaseItem extends StatefulWidget {
  final int index;
  final String title;
  final BottomNavItemClickCallback bottomNavItemClickCallback;

  BottomNavBaseItem(
      {this.index = 0, this.title = '', this.bottomNavItemClickCallback})
      : assert(index >= 0),
        assert(title != null);
}

class BottomNavCenterItem extends BottomNavBaseItem {
  final double height;

  BottomNavCenterItem(
      {this.height = 68,
      int index = 0,
      String title,
      BottomNavItemClickCallback bottomNavItemClickCallback})
      : assert(height > 0),
        super(
            index: index,
            title: title,
            bottomNavItemClickCallback: bottomNavItemClickCallback);

  @override
  _BottomNavCenterItemState createState() => _BottomNavCenterItemState();
}

class _BottomNavCenterItemState extends State<BottomNavCenterItem> {
  double get height => widget.height;

  String get _title => widget.title;

  BottomNavItemClickCallback get bottomNavItemClickCallback =>
      widget.bottomNavItemClickCallback;

  int get index => widget.index;

  @override
  Widget build(BuildContext context) {
    final shape = CircleBorder();
    return Align(
      alignment: Alignment(0, 1 - 40 / MediaQuery.of(context).size.height),
      child: SizedBox(
        height: height,
        width: height,
        child: Material(
          shape: shape,
          elevation: 10,
          color: Colors.white,
          child: InkWell(
            customBorder: shape,
            onTap: () {
              return bottomNavItemClickCallback != null
                  ? bottomNavItemClickCallback(index, _title)
                  : () {};
            },
            child: Container(
              padding: EdgeInsets.all(height / 5),
              child: Image.asset(
                'assets/images/superhero.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavItem extends BottomNavBaseItem {
  final IconData icon;
  final double width;
  final String icAsset;

  BottomNavItem(String title,
      // ignore: avoid_init_to_null
      {this.icon = null,
      this.icAsset = '',
      this.width = 50,
      int index = 0,
      BottomNavItemClickCallback bottomNavItemClickCallback})
      : assert(icon != null || icAsset != null),
        assert(index >= 0),
        assert(width > 0),
        super(
            index: index,
            title: title,
            bottomNavItemClickCallback: bottomNavItemClickCallback);

  @override
  _BottomNavItemState createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  IconData get _icon => widget.icon;

  String get _title => widget.title;

  double get _width => widget.width;

  String get _icAsset => widget.icAsset;

  BottomNavItemClickCallback get bottomNavItemClickCallback =>
      widget.bottomNavItemClickCallback;

  int get index => widget.index;

  @override
  Widget build(BuildContext context) {
    final shape = CircleBorder();
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: _width,
              height: _width,
              child: Material(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                animationDuration: Duration(milliseconds: 1000),
                shape: shape,
                color: Colors.white,
                child: InkWell(
                  customBorder: shape,
                  onTap: () {
                    return bottomNavItemClickCallback != null
                        ? bottomNavItemClickCallback(index, _title)
                        : () {};
                  },
                  child: _icon != null
                      ? Icon(
                          _icon,
                          color: Colors.red[900],
                          size: 18,
                        )
                      : Container(
                          padding: EdgeInsets.all(_width / 4),
                          child: Image.asset(
                            _icAsset,
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(30, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2 + 35 + 7, 0);
    path.arcTo(
        Rect.fromCircle(center: Offset.zero, radius: 70), 0, pi / 2, false);
    path.lineTo(size.width / 2, 0.0 + 35 + 7);
    path.lineTo(size.width / 2 - 35 - 7, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

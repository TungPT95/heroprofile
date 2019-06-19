import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final BottomNavItemClickCallback bottomNavItemClickCallback;

  BottomNavBar({this.bottomNavItemClickCallback});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomNavItemClickCallback get _bottomNavItemClickCallback =>
      widget.bottomNavItemClickCallback;

  @override
  Widget build(BuildContext context) {
    final height1 = 70.0;
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.passthrough,
      children: <Widget>[
        Opacity(
          opacity: 1,
          child: ClipPath(
            clipper: NavClipper(),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF58060A),
                    Color(0xFF642B3D),
                    Color(0xFF543F7A),
                  ],
                  stops: <double>[0.2, 0.5, 1],
                ),
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            BottomNavItem(
              'Entertainments',
              icon: Icons.view_list,
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 0,
            ),
            BottomNavItem(
              'Videos',
              icon: Icons.video_library,
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 1,
            ),
            BottomNavCenterItem(
              title: 'Home',
              height: height1,
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 2,
            ),
            BottomNavItem(
              'Parts',
              icon: Icons.assignment,
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 3,
            ),
            BottomNavItem(
              'About',
              icon: Icons.settings,
              bottomNavItemClickCallback: _bottomNavItemClickCallback,
              index: 4,
            )
          ],
        )
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
      {this.height,
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
    final shape = BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(height / 2 - 2.5)));
    return Align(
      alignment: Alignment(0, 1 - 23 / MediaQuery.of(context).size.height),
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
              padding: EdgeInsets.all(height / 4),
              child: Image.asset(
                'assets/images/ic_loading.png',
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

  BottomNavItem(String title,
      {this.icon = Icons.android,
      int index = 0,
      BottomNavItemClickCallback bottomNavItemClickCallback})
      : assert(icon != null),
        assert(index >= 0),
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

  BottomNavItemClickCallback get bottomNavItemClickCallback =>
      widget.bottomNavItemClickCallback;

  int get index => widget.index;

  @override
  Widget build(BuildContext context) {
    final width = 40.0;
    final radius = width / 2 - 2.5;
    final shape = BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)));
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: width,
              height: width,
              child: Material(
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
                  child: Icon(
                    _icon,
                    color: Colors.red[900],
                    size: 18,
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

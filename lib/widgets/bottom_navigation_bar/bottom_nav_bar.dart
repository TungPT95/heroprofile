import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final height1 = 70.0;
    final height = 80.0 + height1 / 2;
    final shape = BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(height1 / 2 - 3)));
    return ClipPath(
      clipper: NavClipper(),

      child: Container(
        color: Colors.blue[100],
        height: height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildItem('Chapters'),
            buildItem('Videos'),
            Align(
              alignment: Alignment(0, -1),
              child: SizedBox(
                height: height1,
                width: height1,
                child: Material(
                  shape: shape,
                  elevation: 10,
                  color: Colors.grey,
                  child: InkWell(
                    customBorder: shape,
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(height1 / 4),
                      child: Image.asset(
                        'assets/images/ic_loading.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            buildItem('Others'),
            buildItem('About')
          ],
        ),
      ),
    );
  }

  Widget buildItem(String title) {
    final width = 40.0;
    final radius = width / 2 - 3;
    final shape = BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)));
    return Expanded(
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
              color: Colors.blue,
              child: InkWell(
                customBorder: shape,
                onTap: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        ],
      ),
    );
  }
}

class NavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width / 2 + 35 + 7, size.height - 80);
    path.lineTo(size.width / 2, 0.0 - 7);
    path.lineTo(size.width / 2 - 35 - 7, 0.0 + 35);
    path.lineTo(0, size.height - 80);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

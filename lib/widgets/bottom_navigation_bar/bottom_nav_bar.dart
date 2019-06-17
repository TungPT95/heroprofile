import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final height1 = 70.0;
    final shape = BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(height1 / 2)));
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
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(10, 10),
                      spreadRadius: 2)
                ],
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
            buildItem('Chapters', icon: Icons.view_list),
            buildItem('Videos', icon: Icons.video_library),
            Align(
              alignment:
                  Alignment(0, 1 - 0 / MediaQuery.of(context).size.height),
              child: SizedBox(
                height: height1,
                width: height1,
                child: Material(
                  shape: shape,
                  elevation: 10,
                  color: Colors.white,
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
            buildItem('Others', icon: Icons.assignment),
            buildItem('About', icon: Icons.settings)
          ],
        )
      ],
    );
  }

  Widget buildItem(String title, {IconData icon = Icons.android}) {
    final width = 40.0;
    final radius = width / 2;
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
                  onTap: () {},
                  child: Icon(
                    icon,
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
    path.lineTo(size.width , 0);
    path.lineTo(size.width / 2 + 35 + 30, 0);
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

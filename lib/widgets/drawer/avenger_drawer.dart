import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hero_profile/widgets/drawer/avenger_drawer_item.dart';

class AvengerDrawer extends StatefulWidget {
  final String background;
  final List<Widget> drawerItems;
  final double bgAlignment;
  final int currentDrawerItemIndex;

  AvengerDrawer(this.background,
      {this.drawerItems,
      this.currentDrawerItemIndex = 0,
      this.bgAlignment = 0.35})
      : assert(background != null),
        assert(currentDrawerItemIndex >= 0);

  @override
  _AvengerDrawerState createState() => _AvengerDrawerState();
}

class _AvengerDrawerState extends State<AvengerDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 2 / 3,
        child: Card(
          elevation: 0,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'assets/images/bg_drawer.jpg',
                fit: BoxFit.cover,
                alignment: Alignment(-1.5, 0),
              ),
              Container(
                color: Colors.black.withAlpha(10),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 25, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _updateDrawerItem(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _updateDrawerItem() {
    var items = widget.drawerItems;
    for (Widget item in items) {
      if (item is AvengerDrawerItem) {
        item.isSelected =
            widget.currentDrawerItemIndex == item.categoryType.index;
      }
    }
    return widget.drawerItems;
  }
}

class BackgroundCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addPolygon([
      Offset(size.width, size.height * 0 / 3),
      Offset(0 + 20.0, size.height),
      Offset(size.width, size.height),
    ], false);

//    path.lineTo(-size.width, size.height/2);
//    path.relativeLineTo(size.width, size.height );

//    path.relativeLineTo(size.width, 0);
//    path.relativeLineTo(size.width, 5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

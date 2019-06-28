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
    return Theme(
      data: ThemeData.light().copyWith(canvasColor: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 2 / 3,
          child: Card(
            elevation: 0,
            color: Color(0xFF58060A),
            shape: BeveledRectangleBorder(
              side: BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: ClipPath(
              clipper: ShapeBorderClipper(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  FadeInImage.assetNetwork(
                    placeholder:
                    'assets/images/ic_app_vertical_placeholder.jpg',
                    image: '${widget.background}',
                    fit: BoxFit.fitHeight,
                    fadeInDuration: Duration(milliseconds: 900),
                    fadeInCurve: Curves.linear,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      left: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _updateDrawerItem(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _updateDrawerItem() {
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

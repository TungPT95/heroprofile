import 'package:flutter/material.dart';

class CustomizeSliverAppbar extends StatefulWidget {
  final String title;
  final Color appBarBgColor;

  CustomizeSliverAppbar({this.title = '', this.appBarBgColor = Colors.white})
      : assert(title != null);

  @override
  _CustomizeSliverAppbarState createState() => _CustomizeSliverAppbarState();
}

class _CustomizeSliverAppbarState extends State<CustomizeSliverAppbar> {
  String get _title => widget.title;

  Color get _appBarBgColor => widget.appBarBgColor;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      backgroundColor: _appBarBgColor,
      flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          title: Text(
            '$_title',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          background: Container(
            color: Colors.white,
          )),
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
}

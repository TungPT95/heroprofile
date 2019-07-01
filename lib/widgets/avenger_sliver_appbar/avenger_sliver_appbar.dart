import 'package:flutter/material.dart';

class AvengerSliverAppbar extends StatefulWidget {
  final String title;
  final Color appBarBgColor;

  AvengerSliverAppbar({this.title = '', this.appBarBgColor = Colors.white})
      : assert(title != null);

  @override
  _AvengerSliverAppbarState createState() => _AvengerSliverAppbarState();
}

class _AvengerSliverAppbarState extends State<AvengerSliverAppbar> {
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
            style: TextStyle(color: Colors.black),
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

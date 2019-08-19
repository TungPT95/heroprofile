import 'package:flutter/material.dart';

import '../themed_text.dart';

class CustomizeSliverAppbar extends StatelessWidget {
  final String title;
  final Color appBarBgColor;
  final double textScaleFactor;

  CustomizeSliverAppbar(
      {this.title = '',
      this.textScaleFactor = 1,
      this.appBarBgColor = Colors.white})
      : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      backgroundColor: appBarBgColor,
      flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          title: ThemedText(
            '$title',
            textScaleFactor: textScaleFactor,
            style: TextStyle(fontWeight: FontWeight.bold),
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

import 'package:flutter/material.dart';

class AvengerSliverAppbar extends StatefulWidget {
  final double expandedHeight;
  final String title;
  final String appBarBg;
  final Color appBarBgColor;

  AvengerSliverAppbar(
      {this.title = '',
      this.appBarBg = '',
      this.expandedHeight = 0.0,
      this.appBarBgColor = const Color(0xFF58060A)})
      : assert(expandedHeight >= 0),
        assert(title != null),
        assert(appBarBg != null);

  @override
  _AvengerSliverAppbarState createState() => _AvengerSliverAppbarState();
}

class _AvengerSliverAppbarState extends State<AvengerSliverAppbar> {
  double _expandedHeight;

  String get _title => widget.title;

  String get _appBarBg => widget.appBarBg;

  Color get _appBarBgColor => widget.appBarBgColor;

  @override
  Widget build(BuildContext context) {
    _expandedHeight = widget.expandedHeight == 0
        ? (MediaQuery.of(context).size.height / 3)
        : widget.expandedHeight;
    return SliverAppBar(
      pinned: true,
      floating: true,
      forceElevated: true,
      backgroundColor: _appBarBgColor,
      expandedHeight: _expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          title: Text(
            '$_title',
          ),
          centerTitle: true,
          background: FadeInImage.assetNetwork(
            placeholder: 'assets/images/ic_app_horizontal_placeholder.jpg',
            image: '$_appBarBg',
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1100),
            fadeInCurve: Curves.linear,
          )),
      brightness: Brightness.dark,
      automaticallyImplyLeading: true,
    );
  }
}

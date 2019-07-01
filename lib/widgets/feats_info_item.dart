import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';
import 'package:hero_profile/models/feats_info.dart';

class FeatsInfoItem extends StatefulWidget {
  final FeatsInfo featsInfo;
  final double itemElevation;
  final double itemBorderRadius;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;

  FeatsInfoItem(
    this.featsInfo, {
    this.itemElevation = 6,
    this.itemBorderRadius = 20,
    this.contentPaddingLeft = 25,
    this.contentPaddingRight = 25,
    this.itemPaddingLeft = 10,
    this.itemPaddingRight = 10,
    this.itemPaddingTop = 5,
    this.itemPaddingBottom = 5,
  }) : assert(featsInfo != null);

  @override
  _FeatsInfoItemState createState() => _FeatsInfoItemState();
}

class _FeatsInfoItemState extends State<FeatsInfoItem> with AppTheme {
  bool isShownSubInfoList = true;

  @override
  Widget build(BuildContext context) {
        return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            type: MaterialType.card,
            elevation:elevation,
            shadowColor: shadowColor,
            clipBehavior: Clip.antiAlias,
            borderRadius: carBorderRadius,
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.only(
                left: widget.contentPaddingLeft,
                right: widget.contentPaddingRight,
                top: 10,
                bottom: 10,
              ),
              color: Colors.white,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${widget.featsInfo.title}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _buildDescriptions(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDescriptions() {
    List<Widget> list = [];
    for (String item in widget.featsInfo.descs) {
      list.add(Container(
        margin: EdgeInsets.only(
            bottom: widget.featsInfo.descs.indexOf(item) !=
                    widget.featsInfo.descs.length - 1
                ? 5
                : 0),
        child: Text(
          '-︎ $item',
          style: TextStyle(color: textColor),
        ),
      ));
    }

    return list;
  }
}

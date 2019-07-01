import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';
import 'package:hero_profile/models/information.dart';

import 'customize_card.dart';

class SubInfoItem extends StatefulWidget {
  final Information information;
  final double itemElevation;
  final double itemBorderRadius;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;

  SubInfoItem(
    this.information, {
    this.itemElevation = 3,
    this.itemBorderRadius = 10,
    this.contentPaddingLeft = 20,
    this.contentPaddingRight = 20,
    this.itemPaddingLeft = 10,
    this.itemPaddingRight = 10,
    this.itemPaddingTop = 5,
    this.itemPaddingBottom = 5,
  }) : assert(information != null);

  @override
  _SubInfoItemState createState() => _SubInfoItemState();
}

class _SubInfoItemState extends State<SubInfoItem> with AppTheme {
  bool isShownSubGrid = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: CustomizeCard(
        child: Text(
          '${widget.information.description}',
          style: TextStyle(color: textColor),
        ),
        contentPadding: EdgeInsets.only(
            left: widget.contentPaddingLeft,
            right: widget.contentPaddingRight,
            top: 10,
            bottom: 10),
      ),
    );
  }
}

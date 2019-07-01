import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';

import 'customize_card.dart';

class BoardView extends StatefulWidget {
  final String content;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;

  BoardView({
    @required this.content,
    this.itemPaddingLeft = 15,
    this.itemPaddingRight = 15,
    this.itemPaddingTop = 10,
    this.itemPaddingBottom = 10,
  }) : assert(content != null);

  @override
  _BoardViewState createState() => _BoardViewState();
}

class _BoardViewState extends State<BoardView> with AppTheme {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: CustomizeCard(
        contentPadding: EdgeInsets.only(
          left: widget.itemPaddingLeft,
          right: widget.itemPaddingRight,
          top: widget.itemPaddingTop,
          bottom: widget.itemPaddingBottom,
        ),
        child: Text(
          '${widget.content}',
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

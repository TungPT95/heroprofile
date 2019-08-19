import 'package:flutter/material.dart';

import 'customize_card.dart';
import 'themed_text.dart';

class BoardView extends StatelessWidget {
  final String content;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;
  final double heightRatio;
  final double widthRatio;

  BoardView({
    @required this.content,
    this.itemPaddingLeft = 15,
    this.itemPaddingRight = 15,
    this.itemPaddingTop = 10,
    this.itemPaddingBottom = 10,
    this.widthRatio = 1,
    this.heightRatio = 1,
  }) : assert(content != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: CustomizeCard(
        contentPadding: EdgeInsets.only(
          left: itemPaddingLeft,
          right: itemPaddingRight,
          top: itemPaddingTop,
          bottom: itemPaddingBottom,
        ),
        child: ThemedText(
          '$content',
          textScaleFactor: widthRatio,
        ),
      ),
    );
  }
}

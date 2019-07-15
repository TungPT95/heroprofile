import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';

import 'customize_card.dart';
import 'themed_text.dart';

class BoardView extends StatelessWidget with AppTheme {
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
        ),
      ),
    );
  }
}

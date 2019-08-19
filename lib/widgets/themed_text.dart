import 'package:flutter/material.dart';

class ThemedText extends StatelessWidget {
  final String data;
  final TextStyle style;
  final double textScaleFactor;

  ThemedText(this.data, {this.style, this.textScaleFactor = 1});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    TextStyle appliedStyle = TextStyle(
      color: themeData.textTheme.body1.color,
    );
    if (style != null) {
      appliedStyle = appliedStyle.merge(style);
    }
    return Text(
      data,
      textScaleFactor: textScaleFactor,
      style: appliedStyle,
    );
  }
}

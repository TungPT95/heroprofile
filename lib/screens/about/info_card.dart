import 'package:flutter/material.dart';
import 'package:hero_profile/widgets/customize_card.dart';
import 'package:hero_profile/widgets/themed_text.dart';

class InfoCard extends StatelessWidget {
  final OnTapCallback onTap;
  final String content;
  final String icon;
  final double widthRatio;
  final double heightRatio;

  InfoCard(
      {this.content = "",
      this.icon = "",
      this.onTap,
      this.widthRatio = 1,
      this.heightRatio = 1})
      : assert(content != null),
        assert(icon != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 15 * heightRatio, left: 4 * widthRatio, right: 4 * widthRatio),
      child: CustomizeCard(
        onTap: onTap,
        contentPadding: EdgeInsets.symmetric(
            horizontal: 8 * widthRatio, vertical: 12 * heightRatio),
        child: Row(
          children: <Widget>[
            Image.asset(icon, width: 24 * widthRatio, height: 24 * heightRatio),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0 * widthRatio),
                child: ThemedText(
                  content,
                  textScaleFactor: widthRatio,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

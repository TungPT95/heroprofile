import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';
import 'package:hero_profile/widgets/customize_card.dart';
import 'package:hero_profile/widgets/themed_text.dart';

class InfoCard extends StatelessWidget with AppTheme {
  final OnTapCallback onTap;
  final String content;
  final String icon;

  InfoCard({this.content = "", this.icon = "", this.onTap})
      : assert(content != null),
        assert(icon != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 4, right: 4),
      child: CustomizeCard(
        onTap: onTap,
        contentPadding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Image.asset(icon, width: 24, height: 24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ThemedText(
                  content,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

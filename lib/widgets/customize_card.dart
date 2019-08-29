import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';

typedef OnTapCallback = void Function();
typedef OnLongPress = void Function();

class CustomizeCard extends StatelessWidget with AppTheme {
  final EdgeInsetsGeometry contentPadding;
  final Widget child;
  final OnTapCallback onTap;
  final OnLongPress onLongPress;

  CustomizeCard(
      {this.child,
      this.contentPadding = EdgeInsets.zero,
      this.onTap,
      this.onLongPress})
      : assert(child != null),
        assert(contentPadding != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      elevation: elevation,
      shadowColor: shadowColor,
      clipBehavior: Clip.antiAlias,
      borderRadius: cardBorderRadius,
      color: onTap == null ? Colors.transparent : Colors.white,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Container(
          color: onTap == null ? Colors.white : Colors.transparent,
          padding: contentPadding,
          child: child,
        ),
      ),
    );
  }
}

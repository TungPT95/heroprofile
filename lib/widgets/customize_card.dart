import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';

typedef OnTapCallback = void Function();

class CustomizeCard extends StatefulWidget {
  final EdgeInsetsGeometry contentPadding;
  final Widget child;
  final OnTapCallback onTap;

  CustomizeCard({this.child, this.contentPadding = EdgeInsets.zero, this.onTap})
      : assert(child != null),
        assert(contentPadding != null);

  @override
  _CustomizeCardState createState() => _CustomizeCardState();
}

class _CustomizeCardState extends State<CustomizeCard> with AppTheme {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      elevation: elevation,
      shadowColor: shadowColor,
      clipBehavior: Clip.antiAlias,
      borderRadius: cardBorderRadius,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          padding: widget.contentPadding,
          child: widget.child,
        ),
      ),
    );
  }
}

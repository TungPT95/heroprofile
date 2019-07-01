import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';

class CustomizeCard extends StatefulWidget {
  final EdgeInsetsGeometry contentPadding;
  final Widget child;

  CustomizeCard({this.child, this.contentPadding = EdgeInsets.zero})
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
      color: Colors.transparent,
      child: Container(
        color: Colors.white,
        padding: widget.contentPadding,
        child: widget.child,
      ),
    );
  }
}

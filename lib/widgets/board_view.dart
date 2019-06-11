import 'package:flutter/material.dart';

class BoardView extends StatefulWidget {
  final String content;
  final double itemElevation;
  final double itemBorderRadius;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;

  BoardView({
    @required this.content,
    this.itemElevation = 6,
    this.itemBorderRadius = 20,
    this.contentPaddingLeft = 20,
    this.contentPaddingRight = 20,
    this.itemPaddingLeft = 10,
    this.itemPaddingRight = 10,
    this.itemPaddingTop = 5,
    this.itemPaddingBottom = 5,
  }) : assert(content != null);

  @override
  _BoardViewState createState() => _BoardViewState();
}

class _BoardViewState extends State<BoardView> {
  @override
  Widget build(BuildContext context) {
    final itemShape = BeveledRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(widget.itemBorderRadius),
          bottomRight: Radius.circular(widget.itemBorderRadius)),
    );

    return Container(
      padding: EdgeInsets.all(5),
      child: Material(
        type: MaterialType.canvas,
        elevation: widget.itemElevation,
        shape: itemShape,
        color: Colors.transparent,
        child: ClipPath(
          clipper: ShapeBorderClipper(
            shape: itemShape,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFF58060A),
                      Color(0xFF642B3D),
                      Color(0xFF543F7A),
                    ],
                    stops: <double>[0.2, 0.5, 1],
                  ),
                ),
                padding: EdgeInsets.only(
                    left: widget.contentPaddingLeft,
                    right: widget.contentPaddingRight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: 5, right: 5, top: 15, bottom: 15),
                      child: Text(
                        '${widget.content}',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

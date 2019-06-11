import 'package:avenger_information/models/information.dart';
import 'package:flutter/material.dart';

class SubInfoItem extends StatefulWidget {
  final Information information;
  final double itemElevation;
  final double itemBorderRadius;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;

  SubInfoItem(
    this.information, {
    this.itemElevation = 3,
    this.itemBorderRadius = 10,
    this.contentPaddingLeft = 20,
    this.contentPaddingRight = 20,
    this.itemPaddingLeft = 10,
    this.itemPaddingRight = 10,
    this.itemPaddingTop = 5,
    this.itemPaddingBottom = 5,
  }) : assert(information != null);

  @override
  _SubInfoItemState createState() => _SubInfoItemState();
}

class _SubInfoItemState extends State<SubInfoItem> {
  bool isShownSubGrid = false;

  @override
  Widget build(BuildContext context) {
    var itemShape = BeveledRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(widget.itemBorderRadius),
        bottomRight: Radius.circular(widget.itemBorderRadius),
      ),
    );
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            type: MaterialType.canvas,
            elevation: widget.itemElevation,
            shape: itemShape,
            color: Colors.white,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                shape: itemShape,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => setState(() {
                        isShownSubGrid = !isShownSubGrid;
                      }),
                  child: Container(
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
                        right: widget.contentPaddingRight,
                        top: 10,
                        bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${widget.information.description}',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

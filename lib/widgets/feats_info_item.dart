import 'package:hero_profile/models/feats_info.dart';
import 'package:flutter/material.dart';

class FeatsInfoItem extends StatefulWidget {
  final FeatsInfo featsInfo;
  final double itemElevation;
  final double itemBorderRadius;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;

  FeatsInfoItem(
    this.featsInfo, {
    this.itemElevation = 6,
    this.itemBorderRadius = 20,
    this.contentPaddingLeft = 25,
    this.contentPaddingRight = 25,
    this.itemPaddingLeft = 10,
    this.itemPaddingRight = 10,
    this.itemPaddingTop = 5,
    this.itemPaddingBottom = 5,
  }) : assert(featsInfo != null);

  @override
  _FeatsInfoItemState createState() => _FeatsInfoItemState();
}

class _FeatsInfoItemState extends State<FeatsInfoItem> {
  bool isShownSubInfoList = true;

  @override
  Widget build(BuildContext context) {
    var itemShape = BeveledRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(widget.itemBorderRadius),
        bottomRight: Radius.circular(widget.itemBorderRadius),
      ),
    );
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
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
                      right: widget.contentPaddingRight,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${widget.featsInfo.title}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: _buildDescriptions(),
                            ),
                          ),
                        ],
                      ),
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

  List<Widget> _buildDescriptions() {
    List<Widget> list = [];
    for (String item in widget.featsInfo.descs) {
      list.add(Container(
        margin: EdgeInsets.only(
            bottom: widget.featsInfo.descs.indexOf(item) !=
                    widget.featsInfo.descs.length - 1
                ? 5
                : 0),
        child: Text(
          '-︎ $item',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ));
    }

    return list;
  }
}

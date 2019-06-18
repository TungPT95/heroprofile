import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/widgets/sub_info_item.dart';
import 'package:flutter/material.dart';

class InfoItem extends StatefulWidget {
  final Information information;
  final double itemElevation;
  final double itemBorderRadius;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;

  InfoItem(
    this.information, {
    this.itemElevation = 6,
    this.itemBorderRadius = 20,
    this.contentPaddingLeft = 25,
    this.contentPaddingRight = 25,
    this.itemPaddingLeft = 10,
    this.itemPaddingRight = 10,
    this.itemPaddingTop = 5,
    this.itemPaddingBottom = 5,
  }) : assert(information != null);

  @override
  _InfoItemState createState() => _InfoItemState();
}

class _InfoItemState extends State<InfoItem> {
  bool isShownSubInfoList = false;

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
                  onTap: () => setState(() {
                        if (widget.information.subInformation != null &&
                            widget.information.subInformation.isNotEmpty) {
                          isShownSubInfoList = !isShownSubInfoList;
                        }
                      }),
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
                      top: widget.information.title.isNotEmpty ? 10 : 30,
                      bottom: widget.information.title.isNotEmpty ? 10 : 30,
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          widget.information.title.isNotEmpty
                              ? Text(
                            '${widget.information.title}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16),
                          )
                              : Container(),
                          Container(
                            margin: EdgeInsets.only(
                                top: widget.information.title.isNotEmpty
                                    ? 10
                                    : 0),
                            child: Text(
                              '${widget.information.description}',
                              style:
                              TextStyle(fontSize: 12, color: Colors.white),
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
          SingleChildScrollView(
            child: Row(
              children: _buildSubInfoItems(),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSubInfoItems() {
    var list = <Widget>[];
    var subInformation = widget.information.subInformation;
    if (subInformation != null) {
      for (Information item in widget.information.subInformation) {
        list.add(SubInfoItem(item));
      }
    }
    return !isShownSubInfoList ? list : [];
  }
}

import 'package:avenger_information/models/character.dart';
import 'package:flutter/material.dart';

typedef ItemClickListener = void Function(int id);

class CharacterItem extends StatefulWidget {
  final Character character;
  final double itemHeight;
  final double itemCardHeight;
  final double avatarSize;
  final double circleBorderWidth;
  final double itemElevation;
  final double itemBorderRadius;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;
  final ItemClickListener itemClickListener;

  CharacterItem(
    this.character, {
    this.itemClickListener,
    this.itemHeight = 130,
    this.itemCardHeight = 120,
    this.avatarSize = 90,
    this.circleBorderWidth = 2.5,
    this.itemElevation = 6,
    this.itemBorderRadius = 20,
    this.contentPaddingLeft = 120,
    this.contentPaddingRight = 50,
    this.itemPaddingLeft = 10,
    this.itemPaddingRight = 10,
    this.itemPaddingTop = 5,
    this.itemPaddingBottom = 5,
  }) : assert(character != null);

  @override
  _CharacterItemState createState() => _CharacterItemState();
}

class _CharacterItemState extends State<CharacterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.itemHeight,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width -
                  widget.itemPaddingLeft -
                  widget.itemPaddingRight,
              height: widget.itemCardHeight,
              child: Material(
                type: MaterialType.canvas,
                elevation: widget.itemElevation,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.itemBorderRadius),
                ),
                color: Colors.white,
                child: ClipPath(
                  clipper: ShapeBorderClipper(
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(widget.itemBorderRadius),
                    ),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        if (widget.itemClickListener != null) {
                          return widget.itemClickListener(widget.character.id);
                        }
                      },
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
                            right: widget.contentPaddingRight),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${widget.character.name}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                            Text(
                              '${widget.character.series}',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            Container(
                              color: Colors.white,
                              height: 2,
                              width: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '${widget.character.sex}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                Text(
                                  '${widget.character.alignment}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widget.avatarSize / 2),
              child: Material(
                shape: CircleBorder(
                    side: BorderSide(
                  color: Colors.yellow[200],
                  width: widget.circleBorderWidth,
                )),
                child: InkWell(
                  onTap: () {
                    if (widget.itemClickListener != null) {
                      return widget.itemClickListener(widget.character.id);
                    }
                  },
                  child: FadeInImage.assetNetwork(
                    width: widget.avatarSize,
                    height: widget.avatarSize,
                    placeholder: 'assets/images/ic_app_placeholder.jpg',
                    image: '${widget.character.avatar}',
                    fit: BoxFit.cover,
                    fadeInDuration: Duration(seconds: 1),
                    fadeInCurve: Curves.linear,
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

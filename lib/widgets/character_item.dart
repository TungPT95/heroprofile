import 'package:hero_profile/models/character.dart';
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
    this.itemElevation = 10,
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
      margin: const EdgeInsets.only(left: 10, right: 10,bottom: 10),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width -
                  widget.itemPaddingLeft -
                  widget.itemPaddingRight,
              height: widget.itemCardHeight,
              child: Material(
                clipBehavior: Clip.antiAlias,
                type: MaterialType.card,
                elevation: widget.itemElevation,
                shadowColor: Colors.grey[100],
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      if (widget.itemClickListener != null) {
                        return widget.itemClickListener(widget.character.id);
                      }
                    },
                    child: Container(
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
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            '${widget.character.series}',
                          ),
                          Container(
                            height: 2,
                            width: 15,
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${widget.character.sex}',
                              ),
                              Text(
                                '${widget.character.alignment}',
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
          Positioned(
            top: 15,
            left: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widget.avatarSize / 2),
              child: Material(
                shape: CircleBorder(
                    side: BorderSide(
                  color: Colors.grey[500],
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

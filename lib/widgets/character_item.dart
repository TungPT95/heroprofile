import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';
import 'package:hero_profile/models/character.dart';

typedef ItemClickListener = void Function(int id);

class CharacterItem extends StatelessWidget with AppTheme {
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
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width -
                  itemPaddingLeft -
                  itemPaddingRight,
              height: itemCardHeight,
              child: Material(
                clipBehavior: Clip.antiAlias,
                type: MaterialType.card,
                elevation: elevation,
                shadowColor: shadowColor,
                borderRadius: cardBorderRadius,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      if (itemClickListener != null) {
                        return itemClickListener(character.id);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: contentPaddingLeft,
                          right: contentPaddingRight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${character.name}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            '${character.series}',
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
                                '${character.sex}',
                              ),
                              Text(
                                '${character.alignment}',
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
              borderRadius: BorderRadius.circular(avatarSize / 2),
              child: Material(
                shape: CircleBorder(
                    side: BorderSide(
                  color: Colors.grey[500],
                  width: circleBorderWidth,
                )),
                child: InkWell(
                  onTap: () {
                    if (itemClickListener != null) {
                      return itemClickListener(character.id);
                    }
                  },
                  child: FadeInImage.assetNetwork(
                    width: avatarSize,
                    height: avatarSize,
                    placeholder: 'assets/images/ic_image_loading_placeholder.png',
                    fit: BoxFit.cover,
                    image: '${character.avatar}',
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

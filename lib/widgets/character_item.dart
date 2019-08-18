import 'package:flutter/material.dart';
import 'package:hero_profile/models/character.dart';

import 'customize_card.dart';

typedef ItemClickListener = void Function(int id);

class CharacterItem extends StatelessWidget {
  final Character character;
  final double itemHeight;
  final double avatarSize;
  final double circleBorderWidth;
  final double itemElevation;
  final double contentPaddingLeft;
  final double contentPaddingRight;
  final double itemPaddingLeft;
  final double itemPaddingRight;
  final double itemPaddingTop;
  final double itemPaddingBottom;
  final ItemClickListener itemClickListener;
  final double textRatio;

  CharacterItem(this.character,
      {this.itemClickListener,
      this.itemHeight = 130,
      this.avatarSize = 90,
      this.circleBorderWidth = 2.5,
      this.itemElevation = 10,
      this.contentPaddingLeft = 15,
      this.contentPaddingRight = 15,
      this.itemPaddingLeft = 10,
      this.itemPaddingRight = 10,
      this.itemPaddingTop = 5,
      this.itemPaddingBottom = 5,
      this.textRatio = 1})
      : assert(character != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight,
      margin: EdgeInsets.only(
          left: itemPaddingLeft,
          right: itemPaddingRight,
          bottom: itemPaddingBottom),
      child: CustomizeCard(
        onTap: () {
          if (itemClickListener != null) {
            return itemClickListener(character.id);
          }
        },
        contentPadding: EdgeInsets.only(
            left: contentPaddingLeft, right: contentPaddingRight),
        child: Row(
          children: <Widget>[
            Material(
              clipBehavior: Clip.antiAlias,
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
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: contentPaddingLeft),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${character.name}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textScaleFactor: textRatio,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      '${character.series}',
                      textScaleFactor: textRatio,
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
                          textScaleFactor: textRatio,
                        ),
                        Text(
                          '${character.alignment}',
                          textScaleFactor: textRatio,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

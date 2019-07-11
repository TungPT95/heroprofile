import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hero_profile/blocs/utils/app_theme.dart';
import 'package:hero_profile/models/comic.dart';

import 'customize_card.dart';

typedef ItemClickCallback = void Function(Comic detail);

class ComicItem extends StatelessWidget with AppTheme {
  final Comic comic;
  final ItemClickCallback itemClickCallback;

  ComicItem(this.comic, {this.itemClickCallback}) : assert(comic != null);

  Comic get _comic => comic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 30,
      ),
      child: CustomizeCard(
        child: InkWell(
          onTap: () => itemClickCallback(comic),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.network(
                _comic.imgPath,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  height: MediaQuery.of(context).size.height * 1 / 7.5,
                  color: Colors.white.withOpacity(1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        _comic.title,
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${_comic.shortDesc}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(color: textColor),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

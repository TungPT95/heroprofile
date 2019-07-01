import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hero_profile/models/comic.dart';

class ComicItem extends StatefulWidget {
  final Comic comic;

  ComicItem(this.comic) : assert(comic != null);

  @override
  _ComicItemState createState() => _ComicItemState();
}

class _ComicItemState extends State<ComicItem> {
  Comic get _comic => widget.comic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20, right: 40, left: 40),
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 8,
        child: Container(
          color: Colors.white,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Image.network(
                _comic.imgPath,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Opacity(
                  opacity: 0.7,
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
                    height: MediaQuery.of(context).size.height * 1 / 7.5,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 8, right: 8),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1 / 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        _comic.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '${_comic.desc}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(color: Colors.white),
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

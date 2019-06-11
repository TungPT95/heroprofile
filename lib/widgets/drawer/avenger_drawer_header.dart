import 'package:flutter/material.dart';

class AvengerDrawerHeader extends StatefulWidget {
  final String avatar;
  final String title;
  final double circleBorderWidth;
  final double avatarSize;

  AvengerDrawerHeader({
    @required this.avatar,
    this.title = '',
    this.circleBorderWidth = 2,
    this.avatarSize = 70,
  })  : assert(avatar != null),
        assert(title != null),
        assert(circleBorderWidth >= 0),
        assert(avatarSize > 0);

  @override
  _AvengerDrawerHeaderState createState() => _AvengerDrawerHeaderState();
}

class _AvengerDrawerHeaderState extends State<AvengerDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width * 2 / 3 -
                25 -
                20 -
                20 -
                widget.avatarSize -
                8,
            child: Text(
              '${widget.title}',
              overflow: TextOverflow.clip,
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widget.avatarSize / 2),
              child: Material(
                shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white,
                  width: 2,
                )),
                child: FadeInImage.assetNetwork(
                  width: widget.avatarSize,
                  height: widget.avatarSize,
                  placeholder: 'assets/images/ic_app_placeholder.jpg',
                  image: '${widget.avatar}',
                  fit: BoxFit.cover,
                  fadeInDuration: Duration(seconds: 1),
                  fadeInCurve: Curves.linear,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

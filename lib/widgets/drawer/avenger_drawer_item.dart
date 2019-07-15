import 'package:flutter/material.dart';
import 'package:hero_profile/models/character_detail_category.dart';

import '../themed_text.dart';

typedef DrawerItemClickListener = void Function(CategoryType category);

// ignore: must_be_immutable
class AvengerDrawerItem extends StatefulWidget {
  final String text;
  final DrawerItemClickListener drawerItemClickListener;
  bool isSelected = false;
  final int index;
  final CategoryType categoryType;
  final Color textColor;

  AvengerDrawerItem(this.text,
      {this.drawerItemClickListener,
      this.isSelected = false,
      this.index = 0,
      this.textColor = Colors.black,
      this.categoryType = CategoryType.Background})
      : assert(textColor != null);

  @override
  _AvengerDrawerItemState createState() => _AvengerDrawerItemState();
}

class _AvengerDrawerItemState extends State<AvengerDrawerItem> {
  Color get _textColor => widget.textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Material(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        shape: BeveledRectangleBorder(
          side: BorderSide(
              color: widget.isSelected ? Colors.black : Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(9),
            bottomRight: Radius.circular(9),
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            if (widget.drawerItemClickListener != null) {
              widget.drawerItemClickListener(widget.categoryType);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                ThemedText(
                  '${widget.text}',
                  style: TextStyle(color: _textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

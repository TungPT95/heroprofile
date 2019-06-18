import 'package:hero_profile/models/character_detail_category.dart';
import 'package:flutter/material.dart';

typedef DrawerItemClickListener = void Function(CategoryType category);

// ignore: must_be_immutable
class AvengerDrawerItem extends StatefulWidget {
  final String text;
  final DrawerItemClickListener drawerItemClickListener;
  bool isSelected = false;
  final int index;
  final CategoryType categoryType;

  AvengerDrawerItem(this.text,
      {this.drawerItemClickListener,
      this.isSelected = false,
      this.index = 0,
      this.categoryType = CategoryType.Background});

  @override
  _AvengerDrawerItemState createState() => _AvengerDrawerItemState();
}

class _AvengerDrawerItemState extends State<AvengerDrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ClipPath(
        clipper: ShapeBorderClipper(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)))),
        child: Material(
          color:
              Color(0xFFE64A19).withOpacity(widget.isSelected ? 25 / 100 : 0),
          shape: BeveledRectangleBorder(
              side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(9),
                  bottomRight: Radius.circular(9))),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
              if (widget.drawerItemClickListener != null) {
                widget.drawerItemClickListener(widget.categoryType);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.text}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/widgets/carousel_pageview/carousel_pageview.dart';
import 'package:hero_profile/widgets/comic_item.dart';

class ComicList extends StatefulWidget {
  final List<Comic> items;
  final ItemClickCallback itemClickCallback;

  ComicList({@required this.items, this.itemClickCallback})
      : assert(items != null);

  @override
  _ComicListState createState() => _ComicListState();
}

class _ComicListState extends State<ComicList> {
  List<Comic> get _items => widget.items;

  ItemClickCallback get _itemClickCallback => widget.itemClickCallback;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return CarouselPageView(
      itemBuilder: (context, index) {
        return ComicItem(
          _items[index],
          itemClickCallback: (detail) => _itemClickCallback(detail),
        );
      },
      controller: _pageController,
      itemCount: _items.length,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

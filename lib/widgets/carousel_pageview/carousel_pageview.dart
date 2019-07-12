import 'package:flutter/material.dart';

typedef ItemBuilder = Widget Function(BuildContext context, int index);

class CarouselPageView extends StatefulWidget {
  final PageController controller;
  final ItemBuilder itemBuilder;
  final int itemCount;

  CarouselPageView(
      {@required this.itemBuilder, this.controller, this.itemCount})
      : assert(itemBuilder != null);

  @override
  _CarouselPageViewState createState() => _CarouselPageViewState();
}

class _CarouselPageViewState extends State<CarouselPageView> {
  PageController get _pageController => widget.controller ?? PageController();

  ItemBuilder get _itemBuilder => widget.itemBuilder;

  double _currentPage = 0;
  final _wantedPercent = 90 / 100;

  int get _itemCount => widget.itemCount;

  @override
  void initState() {
    super.initState();
    _currentPage = _pageController.initialPage.toDouble();
    _pageController.addListener(() => setState(() {
          _currentPage = _pageController.page;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        final percent = (index - _currentPage).abs();
        final scale = 1 - percent;

        if (index == _currentPage.floor()) {
          return Transform.scale(
            scale: scale < 1 && scale > _wantedPercent
                ? scale
                : scale == 0 || scale == 1 ? 1 : _wantedPercent,
            child: _itemBuilder(context, index),
          );
        } else if (index == _currentPage.round()) {
          return Transform.scale(
            scale:
                scale < 1 && scale >= _wantedPercent ? scale : _wantedPercent,
            child: _itemBuilder(context, index),
          );
        } else {
          return Transform.scale(
            scale: _wantedPercent,
            child: _itemBuilder(context, index),
          );
        }
      },
      itemCount: _itemCount,
      controller: _pageController,
    );
  }
}

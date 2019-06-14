import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';
import 'package:flutter/material.dart';

class AvengerProgressLoadingIndicator extends StatefulWidget {
  final double height;
  final double width;

  AvengerProgressLoadingIndicator({this.height = 0.0, this.width = 0.0});

  @override
  _AvengerProgressLoadingIndicatorState createState() =>
      _AvengerProgressLoadingIndicatorState();
}

class _AvengerProgressLoadingIndicatorState
    extends State<AvengerProgressLoadingIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> _animation;

  double get _height => widget.height;

  double get _width => widget.width;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this);
    _animation = Tween<double>(begin: 0, end: 100).animate(controller);
    controller.forward();
    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AvengerProgressIndicator(
        sideLength: 60,
        animation: _animation,
        height: _height,
        width: _width,
      ),
    );
  }
}

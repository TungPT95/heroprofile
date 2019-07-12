import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hero_profile/widgets/avenger_progress_indicator/progress_indicator_custom_painter.dart';

//used in splash screen
class AvengerProgressIndicator extends AnimatedWidget {
  final double sideLength;
  final double height;
  final double width;
  final double imagePadding;
  final String imagePath;
  final double strokeWidth;
  final StrokeCap strokeCap;
  final Color strokeColor;

  AvengerProgressIndicator(
      {Key key,
      Animation<double> animation,
      this.sideLength = 16,
      this.strokeWidth = 1.5,
      this.height = 0,
      this.width = 0,
      this.imagePadding = 10,
      this.strokeColor = Colors.black,
      this.strokeCap = StrokeCap.butt,
      this.imagePath = 'assets/images/ic_loading_main.png'})
      : assert(sideLength > 0),
        assert(imagePadding >= 0),
        assert(imagePath != null),
        super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> _animation = listenable;
    final imageWidth = sideLength * (1 + sqrt2) - strokeWidth - imagePadding;

    var h = height;
    var w = width;
    if (height <= 0) {
      h = MediaQuery.of(context).size.height;
    }

    if (width <= 0) {
      w = MediaQuery.of(context).size.width;
    }

    return CustomPaint(
      child: Center(
        heightFactor: h / imageWidth,
        child: ClipPath(
          clipper: ShapeBorderClipper(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(imageWidth / 3.4))),
          child: Image.asset(
            imagePath,
            width: imageWidth,
            height: imageWidth,
          ),
        ),
      ),
      foregroundPainter: ProgressIndicatorCustomPaint(
        strokeWidth: strokeWidth,
        strokeCap: strokeCap,
        percent: _animation.value,
        sideLength: sideLength,
        strokeColor: strokeColor,
        axisX: w / 2,
        axisY: -h / 2,
      ),
    );
  }
}

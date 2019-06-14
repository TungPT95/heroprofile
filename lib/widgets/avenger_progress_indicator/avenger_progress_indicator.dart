import 'dart:math';

import 'package:avenger_information/widgets/avenger_progress_indicator/progress_indicator_custom_painter.dart';
import 'package:flutter/material.dart';

class AvengerProgressIndicator extends AnimatedWidget {
  final double sideLength;
  final double height;
  final double width;
  final String imagePath;

  AvengerProgressIndicator(
      {Key key,
      Animation<double> animation,
      this.sideLength = 16,
      this.height = 0,
        this.width = 0,
        this.imagePath = ''})
      : assert(sideLength > 0),
        assert(imagePath != null),
        super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> _animation = listenable;
    final imageWidth = sideLength * (1 + sqrt2) - 10;

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
            'assets/images/ic_loading_dark.png',
            width: imageWidth,
            height: imageWidth,
          ),
        ),
      ),
      foregroundPainter: ProgressIndicatorCustomPaint(
        percent: _animation.value,
        sideLength: sideLength,
        x: w / 2,
        y: -h / 2,
      ),
    );
  }
}

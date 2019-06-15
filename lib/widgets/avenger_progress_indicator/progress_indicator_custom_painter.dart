import 'dart:math';

import 'package:flutter/material.dart';

class ProgressIndicatorCustomPaint extends CustomPainter {
  final double percent;
  final double strokeWidth;
  final double sideLength;
  final double x, y;
  final StrokeCap strokeCap;
  final Color strokeColor;

  ProgressIndicatorCustomPaint(
      {this.percent = 0,
      this.strokeWidth = 2,
      this.sideLength = 50,
      this.strokeCap = StrokeCap.butt,
      this.strokeColor = const Color(0xFFB71C1C),
      this.x = 0.0,
      this.y = 0.0})
      : assert(percent >= 0),
        assert(strokeCap != null);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = strokeColor
      ..strokeWidth = this.strokeWidth
      ..strokeJoin = StrokeJoin.bevel
      ..strokeCap = strokeCap
      ..style = PaintingStyle.stroke;

    final constant = sideLength * sqrt2 / 2;

    //1
    final x1 = x - sideLength / 2, y1 = -(y + constant + sideLength / 2);
    final coordinate1 = Offset(x1, y1);

    var x2 = x1;
    x2 += percent / 100 * sideLength;
    final y2 = y1;
    final coordinate2 = Offset(x2, y2);

    canvas.drawLine(
      coordinate1,
      coordinate2,
      paint,
    );
    //2
    final x32 = x + sideLength / 2, y32 = -(y + constant + sideLength / 2);
    final coordinate32 = Offset(x32, y32);
    var x3 = x32 + percent / 100 * constant;
    var y3 = y32 + percent / 100 * constant;

    final coordinate3 = Offset(x3, y3);

    canvas.drawLine(
      coordinate32,
      coordinate3,
      paint,
    );
    //3
    final x43 = x + sideLength / 2 + constant, y43 = -(y + sideLength / 2);
    final coordinate43 = Offset(x43, y43);

    var x4 = x43;
    var y4 = y43 + percent / 100 * sideLength;
    final coordinate4 = Offset(x4, y4);
    canvas.drawLine(
      coordinate43,
      coordinate4,
      paint,
    );
    //4
    final x54 = x + sideLength / 2 + constant, y54 = -(y - sideLength / 2);
    final coordinate54 = Offset(x54, y54);

    var x5 = x54 - percent / 100 * constant;
    var y5 = y54 + percent / 100 * constant;
    final coordinate5 = Offset(x5, y5);
    canvas.drawLine(
      coordinate54,
      coordinate5,
      paint,
    );
    //5
    final x65 = x + sideLength / 2, y65 = -(y - sideLength / 2) + constant;
    final coordinate65 = Offset(x65, y65);

    var x6 = x65 - percent / 100 * sideLength;
    var y6 = y65;
    final coordinate6 = Offset(x6, y6);

    canvas.drawLine(
      coordinate65,
      coordinate6,
      paint,
    );
    //6
    final x76 = x - sideLength / 2, y76 = -(y - sideLength / 2) + constant;
    final coordinate76 = Offset(x76, y76);

    var x7 = x76 - percent / 100 * constant;
    var y7 = y76 - percent / 100 * constant;
    final coordinate7 = Offset(x7, y7);

    canvas.drawLine(
      coordinate76,
      coordinate7,
      paint,
    );
    // 7
    final x87 = x - sideLength / 2 - constant, y87 = -(y - sideLength / 2);
    final coordinate87 = Offset(x87, y87);

    var x8 = x87;
    var y8 = y87 - percent / 100 * sideLength;
    final coordinate8 = Offset(x8, y8);

    canvas.drawLine(
      coordinate87,
      coordinate8,
      paint,
    );
    //8
    final x98 = x - sideLength / 2 - constant, y98 = -(y + sideLength / 2);
    final coordinate98 = Offset(x98, y98);

    var x9 = x98 + percent / 100 * constant;
    var y9 = y98 - percent / 100 * constant;
    final coordinate9 = Offset(x9, y9);

    canvas.drawLine(
      coordinate98,
      coordinate9,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    final oldPainter = oldDelegate as ProgressIndicatorCustomPaint;
    return this.percent != oldPainter.percent;
  }
}

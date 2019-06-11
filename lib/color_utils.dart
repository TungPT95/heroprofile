import 'package:flutter/painting.dart';

String convertAlphaToHex(double a) {
  String hex = '00';
  a = (a * 100).round().toDouble() / 100.0;
  int alpha = (a * 255).round();
  hex = alpha.toRadixString(16).toUpperCase();
  if (hex.length == 1) {
    hex = '0' + hex;
  }
  return hex;
}

Color getColorFromHex(String color, double a) {
  int c = int.parse('0x' + convertAlphaToHex(a / 100) + color);
  return Color(c);
}

import 'package:flutter/material.dart';

abstract class ThemedBaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get theme => Theme.of(context);

  Size get screenSize => MediaQuery.of(context).size;
}

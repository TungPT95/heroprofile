import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> _animation;
  AvengerProgressIndicator _avengerProgressIndicator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this);
    _animation = Tween<double>(begin: 0, end: 100).animate(controller);
    _avengerProgressIndicator = AvengerProgressIndicator(
      sideLength: 60,
      animation: _animation,
    );
    controller.forward();
    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: _avengerProgressIndicator,
      ),
    );
  }
}

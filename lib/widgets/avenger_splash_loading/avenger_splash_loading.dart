import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';
import 'package:flutter/material.dart';

class AvengerSplashLoading extends StatefulWidget {
  @override
  _AvengerSplashLoadingState createState() => _AvengerSplashLoadingState();
}

class _AvengerSplashLoadingState extends State<AvengerSplashLoading>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> _animation;

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
      ),
    );
  }
}

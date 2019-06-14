import 'package:avenger_information/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';
import 'package:flutter/material.dart';

typedef SplashLoadingCallback = void Function(BuildContext context);

class AvengerSplashLoading extends StatefulWidget {
  final SplashLoadingCallback splashLoadingCallback;

  AvengerSplashLoading({this.splashLoadingCallback});

  @override
  _AvengerSplashLoadingState createState() => _AvengerSplashLoadingState();
}

class _AvengerSplashLoadingState extends State<AvengerSplashLoading>
    with SingleTickerProviderStateMixin {
  SplashLoadingCallback get _splashLoadingCallback =>
      widget.splashLoadingCallback;
  AnimationController controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 1600), vsync: this);
    _animation = Tween<double>(begin: 0, end: 100).animate(controller)
      ..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          await Future.delayed(Duration(seconds: 2));
          if (_splashLoadingCallback != null) {
            _splashLoadingCallback(context);
          }
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AvengerProgressIndicator(
        imagePadding: 30,
        strokeCap: StrokeCap.round,
        strokeWidth: 3,
        sideLength: 60,
        animation: _animation,
        imagePath: 'assets/images/ic_loading.png',
      ),
    );
  }
}

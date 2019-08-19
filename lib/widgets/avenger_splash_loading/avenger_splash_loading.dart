import 'package:flutter/material.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/widgets/avenger_progress_indicator/avenger_progress_indicator.dart';

typedef SplashLoadingCallback = void Function(BuildContext context);

class AvengerSplashLoading extends StatefulWidget {
  final SplashLoadingCallback splashLoadingCallback;

  AvengerSplashLoading({this.splashLoadingCallback});

  @override
  _AvengerSplashLoadingState createState() => _AvengerSplashLoadingState();
}

class _AvengerSplashLoadingState extends BasePageState<AvengerSplashLoading>
    with SingleTickerProviderStateMixin {
  SplashLoadingCallback get _splashLoadingCallback =>
      widget.splashLoadingCallback;
  AnimationController controller;
  Animation<double> _progressAnimation;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    _progressAnimation = Tween<double>(begin: 0, end: 100).animate(controller)
      ..addStatusListener((status)  {
        if (status == AnimationStatus.completed) {
          if (_splashLoadingCallback != null) {
            _splashLoadingCallback(context);
          }
        }
      });
    _scaleAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.elasticOut));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final sideLength = scaleWidth(40.0);
    return AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  AvengerProgressIndicator(
                    strokeColor: Colors.transparent,
                    strokeWidth: 2,
                    sideLength: sideLength,
                    animation: _progressAnimation,
                    imagePath: 'assets/images/ic_loading.png',
                  )
                ],
              ),
            ),
          );
        });
  }
}

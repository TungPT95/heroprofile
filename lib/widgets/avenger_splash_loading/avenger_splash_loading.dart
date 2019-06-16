import 'dart:math' as math;

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
    final sideLength = 60.0;
    final imageWidth = sideLength * (1 + math.sqrt2);
    return AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Center(
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(imageWidth / 3.4))),
                      child: Container(
                        height: imageWidth,
                        width: imageWidth,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xFF58060A),
                              Color(0xFF642B3D),
                              Color(0xFF543F7A),
                            ],
                            stops: <double>[0.2, 0.5, 1],
                          ),
                        ),
                      ),
                    ),
                  ),
                  AvengerProgressIndicator(
                    imagePadding: 50,
                    strokeColor: Colors.transparent,
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

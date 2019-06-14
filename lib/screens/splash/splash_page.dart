import 'package:avenger_information/widgets/avenger_splash_loading/avenger_splash_loading.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final SplashLoadingCallback splashLoadingCallback;

  SplashPage({this.splashLoadingCallback});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashLoadingCallback get _splashLoadingCallback =>
      widget.splashLoadingCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: AvengerSplashLoading(
          splashLoadingCallback: _splashLoadingCallback,
        ),
      ),
    );
  }
}

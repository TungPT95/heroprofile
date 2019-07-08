import 'package:flutter/material.dart';
import 'package:hero_profile/widgets/avenger_splash_loading/avenger_splash_loading.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: AvengerSplashLoading(
          splashLoadingCallback: (context) async {
            await Future.delayed(Duration(milliseconds: 500));
            _splashLoadingCallback(context);
          },
        ),
      ),
    );
  }
}

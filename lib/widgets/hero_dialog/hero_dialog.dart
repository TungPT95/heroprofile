import 'package:flutter/material.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';

class HeroDialog extends StatefulWidget {
  @override
  _HeroDialogState createState() => _HeroDialogState();
}

class _HeroDialogState extends BasePageState<HeroDialog>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animation<double> widthAnim;
  Animation<double> heightAnim;
  Animation<double> radiusAnim;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    super.initState();
    widthAnim = Tween<double>(begin: 0, end: 0.8).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0, 0.3, curve: Curves.linear)));
    heightAnim = Tween<double>(begin: 0, end: 0.5).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.3, 0.8, curve: Curves.easeOutQuart)));
    radiusAnim = Tween<double>(begin: 0, end: 15).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.8, 1, curve: Curves.linear)));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (c, w) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(radiusAnim.value),
              ),
              alignment: Alignment.center,
              width: widthAnim.value * screenSize.width,
              height: heightAnim.value == 0
                  ? 2
                  : heightAnim.value * screenSize.height,
              child: Text('dialog'),
            );
          },
        ),
      ),
    );
  }
}

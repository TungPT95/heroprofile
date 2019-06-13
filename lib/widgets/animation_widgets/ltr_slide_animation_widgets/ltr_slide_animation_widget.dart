import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_bloc.dart';
import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LTRSlideAnimationWidget extends StatefulWidget {
  final Widget child;
  final int index;
  final Duration duration;

  LTRSlideAnimationWidget(this.child, {this.index = 0, this.duration})
      : assert(child != null),
        assert(index >= 0),
        assert(duration != null);

  @override
  _LTRSlideAnimationWidgetState createState() =>
      _LTRSlideAnimationWidgetState();
}

class _LTRSlideAnimationWidgetState extends State<LTRSlideAnimationWidget>
    with SingleTickerProviderStateMixin {
  LTRSlideAnimationBloc _ltrSlideAnimationBloc;

  Widget get _child => widget.child;

  int get _index => widget.index;

  Duration get _duration => widget.duration;

  AnimationController _animationController;
  Animation<Offset> _animation;

  @override
  void initState() {
    _ltrSlideAnimationBloc = BlocProvider.of<LTRSlideAnimationBloc>(context);
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: _duration);
    _animation = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _ltrSlideAnimationBloc,
        builder: (context, state) {
          if (state is OnSlideAnimateState) {
            if (state.index >= _index && state.index > -1) {
              _animationController.forward();
            }
          }
          return SlideTransition(
            position: _animation,
            child: _child,
          );
        });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

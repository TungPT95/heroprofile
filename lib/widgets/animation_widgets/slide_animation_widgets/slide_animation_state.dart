import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_bloc.dart';
import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SlideAnimationState<T extends StatefulWidget> extends State<T>
    with SingleTickerProviderStateMixin {
  LTRSlideAnimationBloc _ltrSlideAnimationBloc;

  AnimationController _animationController;
  Animation<Offset> _animation;

  @override
  void initState() {
    _ltrSlideAnimationBloc = BlocProvider.of<LTRSlideAnimationBloc>(context);
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: getDuration());

    _animation = Tween<Offset>(begin: getBeginOffset(), end: getEndOffset())
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.bounceOut));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _ltrSlideAnimationBloc,
        builder: (context, state) {
          if (state is OnSlideAnimateState) {
            if (state.index >= getIndex() && state.index > -1) {
              _animationController.forward();
            }
          }
          return SlideTransition(
            position: _animation,
            child: buildChild(context),
          );
        });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget buildChild(BuildContext context);

  Duration getDuration() => Duration(milliseconds: 300);

  Offset getBeginOffset() => Offset(0, 0);

  Offset getEndOffset() => Offset(0, 0);

  int getIndex() => 0;
}

import 'package:hero_profile/blocs/ltr_slide_animation/ltr_slide_animation_bloc.dart';
import 'package:hero_profile/blocs/ltr_slide_animation/ltr_slide_animation_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SlideAnimationViewBaseState<T extends StatefulWidget>
    extends State<T> {
  LTRSlideAnimationBloc _ltrSlideAnimationBloc;

  @override
  void initState() {
    _ltrSlideAnimationBloc =
        LTRSlideAnimationBloc(delay: getDuration(), length: getLength());
    _ltrSlideAnimationBloc.dispatch(StartSlideAnimation(0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LTRSlideAnimationBloc>(
      builder: (context) => _ltrSlideAnimationBloc,
      dispose: (context, bloc) => bloc.dispose(),
      child: buildChild(context),
    );
  }

  int getLength() => 1;

  Widget getSlideAnimationWidget(Widget child, {int index, Duration duration});

  Duration getDuration() => Duration(milliseconds: 200);

  Widget buildChild(BuildContext context);

  @override
  void dispose() {
    _ltrSlideAnimationBloc.dispose();
    super.dispose();
  }
}

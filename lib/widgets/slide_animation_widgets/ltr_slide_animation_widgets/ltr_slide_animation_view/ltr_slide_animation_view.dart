import 'package:flutter/material.dart';

import '../../slide_animation_view_base_state.dart';
import '../ltr_slide_animation_widget.dart';

class LTRSlideAnimationView extends StatefulWidget {
  final Widget child;

  LTRSlideAnimationView(this.child) : assert(child != null);

  @override
  _LTRSlideAnimationViewState createState() => _LTRSlideAnimationViewState();
}

class _LTRSlideAnimationViewState
    extends SlideAnimationViewBaseState<LTRSlideAnimationView> {
  Widget get _child => widget.child;

  @override
  Widget buildChild(BuildContext context) {
    return getSlideAnimationWidget(
      _child,
      index: 0,
      duration: getDuration(),
    );
  }

  @override
  Duration getDuration() => Duration(milliseconds: 250);

  @override
  Widget getSlideAnimationWidget(Widget child, {int index, Duration duration}) {
    return LTRSlideAnimationWidget(
      child,
      index: index,
      duration: duration,
    );
  }
}

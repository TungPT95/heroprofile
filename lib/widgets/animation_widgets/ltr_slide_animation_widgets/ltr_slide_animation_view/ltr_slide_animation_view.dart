import 'package:avenger_information/widgets/animation_widgets/ltr_slide_animation_widgets/ltr_slide_animation_base_state/ltr_slide_animation_base_state.dart';
import 'package:flutter/material.dart';

class LTRSlideAnimationView extends StatefulWidget {
  final Widget child;

  LTRSlideAnimationView(this.child) : assert(child != null);

  @override
  _LTRSlideAnimationViewState createState() => _LTRSlideAnimationViewState();
}

class _LTRSlideAnimationViewState
    extends LTRSlideAnimationBaseState<LTRSlideAnimationView> {
  Widget get _child => widget.child;

  @override
  Widget buildChild(BuildContext context) {
    return getLTRSlideAnimationWidget(
      _child,
      index: 0,
      duration: getDuration(),
    );
  }
}

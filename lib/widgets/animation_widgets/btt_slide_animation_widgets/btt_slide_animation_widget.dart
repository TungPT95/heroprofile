import 'package:avenger_information/widgets/animation_widgets/slide_animation_state.dart';
import 'package:flutter/material.dart';

class BTTSlideAnimationWidget extends StatefulWidget {
  final Widget child;
  final int index;
  final Duration duration;

  BTTSlideAnimationWidget(this.child, {this.index = 0, this.duration})
      : assert(child != null),
        assert(index >= 0),
        assert(duration != null);

  @override
  _BTTSlideAnimationWidgetState createState() =>
      _BTTSlideAnimationWidgetState();
}

class _BTTSlideAnimationWidgetState
    extends SlideAnimationtState<BTTSlideAnimationWidget> {
  Widget get _child => widget.child;

  int get _index => widget.index;

  Duration get _duration => widget.duration;

  @override
  Widget buildChild(BuildContext context) => _child;

  @override
  Duration getDuration() => _duration;

  @override
  int getIndex() => _index;

  @override
  Offset getBeginOffset() => Offset(0, 1);

  @override
  Offset getEndOffset() => Offset(0, 0);
}

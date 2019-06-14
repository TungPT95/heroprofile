import 'package:avenger_information/widgets/animation_widgets/slide_animation_state.dart';
import 'package:flutter/material.dart';

class SlideAnimationWidget extends StatefulWidget {
  final Widget child;
  final int index;
  final Duration duration;
  final Offset begin;
  final Offset end;

  SlideAnimationWidget(this.child,
      {this.index = 0,
      this.begin = const Offset(0, 0),
      this.end = const Offset(0, 0),
      this.duration})
      : assert(child != null),
        assert(index >= 0),
        assert(duration != null),
        assert(begin != null),
        assert(end != null);

  @override
  _SlideAnimationWidgetState createState() => _SlideAnimationWidgetState();
}

class _SlideAnimationWidgetState
    extends SlideAnimationtState<SlideAnimationWidget> {
  Widget get _child => widget.child;

  int get _index => widget.index;

  Offset get _begin => widget.begin;

  Offset get _end => widget.end;

  Duration get _duration => widget.duration;

  @override
  Widget buildChild(BuildContext context) => _child;

  @override
  Duration getDuration() => _duration;

  @override
  int getIndex() => _index;

  @override
  Offset getBeginOffset() => _begin;

  @override
  Offset getEndOffset() => _end;
}

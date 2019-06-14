import 'package:avenger_information/widgets/animation_widgets/slide_animation_widgets/slide_animation_widget.dart';
import 'package:flutter/material.dart';

class LTRSlideAnimationWidget extends SlideAnimationWidget {
  final Widget child;
  final int index;
  final Duration duration;

  LTRSlideAnimationWidget(this.child, {this.index = 0, this.duration})
      : super(child,
            index: index,
            duration: duration,
            begin: Offset(-1, 0),
            end: Offset(0, 0));
}

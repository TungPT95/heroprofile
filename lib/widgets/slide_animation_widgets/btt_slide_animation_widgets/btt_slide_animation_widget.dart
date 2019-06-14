import 'package:flutter/material.dart';

import '../slide_animation_widget.dart';

class BTTSlideAnimationWidget extends SlideAnimationWidget {
  final Widget child;
  final int index;
  final Duration duration;

  BTTSlideAnimationWidget(this.child, {this.index = 0, this.duration})
      : super(child,
            index: index,
            duration: duration,
            begin: Offset(0, 1),
            end: Offset(0, 0));
}

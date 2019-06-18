import 'package:hero_profile/blocs/base/base_state.dart';

abstract class LTRSlideAnimationState extends BaseState {
  LTRSlideAnimationState([List props = const []]) : super(props);
}

class OnSlideAnimateState extends LTRSlideAnimationState {
  final int index;

  OnSlideAnimateState(this.index)
      : assert(index >= 0),
        super([index]);

  @override
  String toString() => 'On SlideAnimate: $index';
}

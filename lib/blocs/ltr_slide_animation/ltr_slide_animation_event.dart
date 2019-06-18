import 'package:hero_profile/blocs/base/base_event.dart';

abstract class LTRSlideAnimationEvent extends BaseEvent {
  LTRSlideAnimationEvent([List props = const []]) : super(props);
}

class StartSlideAnimation extends LTRSlideAnimationEvent {
  final int beginIndex;

  StartSlideAnimation(this.beginIndex)
      : assert(beginIndex >= 0),
        super([beginIndex]);

  @override
  String toString() => 'Start SlideAnimation: $beginIndex';
}

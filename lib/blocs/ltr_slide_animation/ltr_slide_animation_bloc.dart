import 'package:avenger_information/blocs/base/base_bloc.dart';
import 'package:avenger_information/blocs/base/base_event.dart';
import 'package:avenger_information/blocs/base/base_state.dart';
import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_event.dart';
import 'package:avenger_information/blocs/ltr_slide_animation/ltr_slide_animation_state.dart';

class LTRSlideAnimationBloc extends BaseBloc {
  final Duration delay;
  final int length;

  LTRSlideAnimationBloc(
      {this.delay = const Duration(milliseconds: 400), this.length = 0})
      : assert(delay != null);

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    if (event is StartSlideAnimation) {
      int itemListIndex = event.beginIndex;
      if (itemListIndex < length) {
        await Future.delayed(delay);
        yield OnSlideAnimateState(itemListIndex);
        itemListIndex++;
        dispatch(StartSlideAnimation(itemListIndex));
      }
    }
    super.mapEventToState(event);
  }
}

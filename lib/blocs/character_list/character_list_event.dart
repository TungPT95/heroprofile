import 'package:hero_profile/blocs/base/base_event.dart';

abstract class CharacterListEvent extends BaseEvent {
  CharacterListEvent([List props = const []]) : super(props);
}

import 'package:hero_profile/blocs/base/base_event.dart';
import 'package:hero_profile/models/character_detail_category.dart';

abstract class CharacterInfoEvent extends BaseEvent {
  CharacterInfoEvent([List props]) : super(props);
}

class LoadCharacterDetailCategory extends CharacterInfoEvent {
  @override
  String toString() => 'Load Background';
}

class DrawerClickEvent extends CharacterInfoEvent {
  final CategoryType category;
  final String title;

  DrawerClickEvent(this.category, {this.title = ''}) : assert(category != null);

  @override
  String toString() => 'CategoryType: ${category.toString()}';
}

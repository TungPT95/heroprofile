import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/models/character.dart';

abstract class CharacterListState extends BaseState {}

class LoadingCharacterSate extends CharacterListState {
  @override
  String toString() => 'Loading Character';
}

class LoadedCharacterState extends CharacterListState {
  final List<Character> characters;

  LoadedCharacterState(this.characters)
      : assert(characters != null && characters.isNotEmpty);

  @override
  String toString() => 'Loaded Character: ${characters.length}';
}

class LoadedCharacterFailedState extends CharacterListState {
  @override
  String toString() => 'Loaded Character Failed';
}

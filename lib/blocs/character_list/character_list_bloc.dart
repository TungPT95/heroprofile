import 'package:hero_profile/blocs/base/base_bloc.dart';
import 'package:hero_profile/blocs/base/base_event.dart';
import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/repository/characters/characters_repos.dart';
import 'package:meta/meta.dart';

import 'character_list_state.dart';

class CharacterListBloc extends BaseBloc {
  final CharactersRepos repository;

  CharacterListBloc({@required this.repository}) : assert(repository != null);

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    if (event is OnStart) {
      yield LoadingCharacterSate();
      final characters = await repository.getCharacters();
      if (characters != null && characters.isNotEmpty) {
        yield LoadedCharacterState(characters);
      } else {
        yield LoadedCharacterFailedState();
      }
    }
    super.mapEventToState(event);
  }
}

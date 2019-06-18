import 'package:hero_profile/blocs/base/base_bloc.dart';
import 'package:hero_profile/blocs/base/base_event.dart';
import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/character_repos/character_repos.dart';

import 'character_info_event.dart';
import 'character_info_state.dart';

class CharacterInfoBloc extends BaseBloc {
  CharacterRepos characterRepository;

  CharacterInfoBloc({this.characterRepository});

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    if (event is LoadCharacterDetailCategory) {
      yield LoadingCharacterDetailCategoryState();

      final categories = characterRepository.getCharacterDetailCategory();
      if (categories != null && categories.isNotEmpty) {
        yield LoadedCharacterDetailCategoryState(categories: categories);
      } else {
        yield LoadedCharacterDetailCategoryFailedState();
      }
    }
    if (event is DrawerClickEvent) {
      yield OnDrawerClickState(event.category, title: event.title);

      switch (event.category) {
        case CategoryType.PowersAbilities:
          final list = await characterRepository.getPowersAbilities();
          yield _handleInformationData(list);
          break;
        case CategoryType.Equipment:
          final list = await characterRepository.getEquipment();
          yield _handleInformationData(list);
          break;
        case CategoryType.AlternateForms:
          final list = await characterRepository.getAlternateForms();
          yield _handleInformationData(list);
          break;

        case CategoryType.Feats:
          final list = await characterRepository.getFeats();
          if (list != null && list.isNotEmpty)
            yield LoadedFeatsState(feats: list);
          else
            yield LoadedFailedState();
          break;

        case CategoryType.Weaknesses:
          final list = await characterRepository.getWeaknesses();
          yield _handleInformationData(list);
          break;

        case CategoryType.FunFacts:
          final list = await characterRepository.getFunFacts();
          yield _handleInformationData(list);
          break;

        case CategoryType.Faults:
          final list = await characterRepository.getFaults();
          yield _handleInformationData(list);
          break;

        case CategoryType.CPWConclusions:
          final list = await characterRepository.getCPWConclusions();
          yield _handleInformationData(list);
          break;

        default:
          final background = await characterRepository.getBackground();
          if (background != null && background.isNotEmpty)
            yield LoadedBackgroundState(background: background);
          else
            yield LoadedFailedState();
          break;
      }
    }

    super.mapEventToState(event);
  }

  LoadedInformationState _handleInformationData(List<Information> list) {
    if (list != null && list.isNotEmpty) {
      return LoadedInformationState(information: list);
    } else {
      return LoadedInformationState(information: []);
    }
  }
}

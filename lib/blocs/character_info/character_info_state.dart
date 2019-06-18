import 'package:hero_profile/blocs/base/base_state.dart';
import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';

abstract class CharacterInfoState extends BaseState {
  CharacterInfoState([List props]) : super(props);
}

class LoadingCharacterDetailCategoryState extends CharacterInfoState {
  @override
  String toString() => 'Loading CharacterDetailCategory';
}

class LoadingState extends CharacterInfoState {
  @override
  String toString() => 'Loading';
}

class LoadedFailedState extends CharacterInfoState {
  @override
  String toString() => 'Loaded Failed';
}

class OnDrawerClickState extends CharacterInfoState {
  final CategoryType category;
  final String title;

  OnDrawerClickState(this.category, {this.title = ''})
      : assert(category != null);

  @override
  String toString() => 'On Drawer Click';
}

class LoadedCharacterDetailCategoryState extends CharacterInfoState {
  final List<CharacterDetailCategory> categories;

  LoadedCharacterDetailCategoryState({this.categories});

  @override
  String toString() => 'Loaded Character: $categories';
}

class LoadedCharacterDetailCategoryFailedState extends CharacterInfoState {
  @override
  String toString() => 'Loaded CharacterDetailCategory Failed';
}

class LoadedBackgroundState extends CharacterInfoState {
  final String background;

  LoadedBackgroundState({this.background});

  @override
  String toString() => 'Loaded Background: $background';
}

class LoadedInformationState extends CharacterInfoState {
  final List<Information> information;

  LoadedInformationState({this.information});

  @override
  String toString() => 'Loaded Information: $information';
}

class LoadedFeatsState extends CharacterInfoState {
  final List<FeatsInfo> feats;

  LoadedFeatsState({this.feats});

  @override
  String toString() => 'Loaded Feats: $feats';
}

class StopLoadingState extends CharacterInfoState {
  @override
  String toString() => 'Stop Loading';
}

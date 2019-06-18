import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/repository.dart';

abstract class CharacterRepos extends Repository {
  Future<String> getBackground() => returnData<String>('');

  List<CharacterDetailCategory> getCharacterDetailCategory() => [];

  Future<List<Information>> getPowersAbilities() =>
      returnData<List<Information>>([]);

  Future<List<Information>> getEquipment() => returnData<List<Information>>([]);

  Future<List<Information>> getAlternateForms() =>
      returnData<List<Information>>([]);

  Future<List<Information>> getWeaknesses() =>
      returnData<List<Information>>([]);

  Future<List<Information>> getFunFacts() => returnData<List<Information>>([]);

  Future<List<FeatsInfo>> getFeats() => returnData<List<FeatsInfo>>([]);

  Future<List<Information>> getFaults() => returnData<List<Information>>([]);

  Future<List<Information>> getCPWConclusions() =>
      returnData<List<Information>>([]);
}

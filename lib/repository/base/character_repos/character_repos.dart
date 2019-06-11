import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/repository.dart';

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

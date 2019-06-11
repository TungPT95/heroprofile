class CharacterDetailCategory {
  int id;
  String title;
  CategoryType categoryType;

  CharacterDetailCategory(
      {this.id = 0,
      this.title = '',
      this.categoryType = CategoryType.Background})
      : assert(id >= 0),
        assert(title != null);
}

final backgroundTitle = 'Background';
final powersAbilitiesTitle = 'Powers and Abilities';
final equipmentTitle = 'Equipment';
final alternateFormsTitle = 'Alternate Forms';
final featsTitle = 'Feats';
final weaknessesTitle = 'Weaknesses';
final funFactsTitle = 'Fun Facts';
final faultsTitle = 'Faults';
final cPWConclusionsTitle = 'CPW\'s Conclusions';

enum CategoryType {
  Background,
  PowersAbilities,
  Equipment,
  AlternateForms,
  Feats,
  Weaknesses,
  FunFacts,
  Faults,
  CPWConclusions
}

import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/character_repos/character_repos.dart';

class ThanosRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Thanos was born as one of the last sons of A\'Lars and Sui-San as an Eternal of Saturn\'s moon Titan. Growing up with thick, purple skin and a massive '
        'build due to his rare Deviant Syndrome, he was very secluded and kept to himself, being a pacifist and only interacting with his brother Eros. Due '
        'to his outcasted nature and awkward physique, Thanos felt rejected by life and starting obsessing over the concepts of nihilism and death. '
        'Through bionic implants, meditation, and black magic, Thanos quickly rose to become the most powerful of his kind, and with this strength also grew his '
        'ambition and lust for conquest. At some point, Thanos stole one of his people\'s starships and traveled all across the cosmos to '
        'recruit soldiers, mercenaries, and malcontents for a private army. As he grew in power and infamy, Thanos eventually encountered the embodiment of '
        'Death itself in female form, and found himself so enamored by her that he vowed to kill every living being in the universe in order to prove his love. '
        'With his new love, he returned to Titan and conquered it, killing his mother and taking the world as his own. Ever since then, Thanos has been stopping '
        'at nothing to increase his power so that he may one day prove himself to Death and join her for eternity.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = indexing(<Information>[
      Information(
          title: 'Godly Strength',
          description:
              'Through various enhancements and boosts in power, Thanos has become the physically strongest of all Eternals, capable of easily '
              'trading blows with the likes of Thor and Hulk.'),
      Information(
          title: 'Superhuman Speed',
          description:
              'Despite his bulky nature, Thanos can move faster than any human could hope to, and can even react to the swiftest of heroes.'),
      Information(
          title: 'Genious Intellect',
          description:
              'Thanos\' most dangerous ability is perhaps his own mind, as he has dedicated his intellect to enhancing his power and to the annihilation '
              'of all life. He knows virtually all fields of advanced science, can quickly adapt to new battle situations, and has created technology that '
              'far exceeds anything humans could create.'),
      Information(
          title: 'Energy Projection',
          description:
              'Thanos can project multiple types of energy from his hands and eyes, and are powerful enough to damage the likes of Galactus.'),
      Information(
          title: 'Force Fields',
          description:
              'To protect himself from harm, Thanos can create protective force fields.'),
      Information(
          title: 'Matter Manipulation',
          description:
              'Thanos has shown the ability to transmute matter at least once, such as how he turned a Skrull to stone.'),
      Information(
          title: 'Curses',
          description:
              'Thanos once cursed Deadpool to eternal life, rendering him immortal.'),
      Information(
          title: 'Immortality',
          description:
              'Like all Eternals, Thanos is immortal in the sense that he is immune to all known diseases and infections and cannot die from old age.'),
      Information(
          title: 'Telepathy',
          description:
              'Possessing psionic abilities, Thanos\' mind is immune to most psychic attacks and mind-controlling. He has driven one of the Priests of '
              'Prama insane with a single gesture, and has convinced the Hulk to turn against the other Avengers.'),
      Information(
          title: 'Creation',
          description:
              'Thanos can somehow construct objects like trees or houses etc.'),
      Information(
          title: 'Life Force Manipulation',
          description:
              'Can absorb life forces from other beings and use it to add to his own power. He can als use it to transfer to other life forces.'),
      Information(
        title: 'Formidable Combatant',
        description:
            'Although he usually avoids fighting as he thinks it is beneath him, he is very skilled in hand-to-hand combat.',
      ),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          title: 'Inferiority Complex',
          description:
              'Feigned as arrogance, Thanos often undermines his worthiness and power in combat. This appears like he underestimates his opponents, '
              'but he is really just doubting himself and leaving openings to exploit. Sometimes, he even surrenders out of self doubt, as one time he simply '
              'tripped on purpose and allowed himself to be arrested by ordinary police officers.'),
      Information(
          title: 'Limited Movement Speed',
          description:
              'Outside of his Throne, Thanos is only slightly faster than an Olympic athlete on foot.'),
      Information(
          title: 'Limits to Infinity Gauntlet',
          description:
              'The Infinity Gauntlet is powerless outside its universe of origin, even if it surpasses any Universal being it\'s faced.'),
      Information(
        title: 'Squirrels',
      ),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getFunFacts() {
    var list = indexing(<Information>[
      Information(description: 'Thanos once seduced Galactus. Not even lying.'),
      Information(description: 'He once owned a helicopter.'),
      Information(
          description: 'Thanos actually had a "child" with Death once.'),
      Information(
          description:
              'He is based after the villain Darkseid from DC Comics.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var infinityGauntletList = indexing(<Information>[
      Information(description: 'Power Manipulation'),
      Information(description: 'Mind Manipulation'),
      Information(description: 'Time Manipulation'),
      Information(description: 'Space Manipulation'),
      Information(description: 'Soul Manipulation'),
      Information(description: 'Reality-Warping'),
    ]);
    var spaceThroneList = indexing(<Information>[
      Information(description: 'Immense Speed'),
      Information(description: 'Teleportation'),
      Information(description: 'Inter-Dimensional Travel'),
      Information(description: 'Force Field Generation'),
    ]);
    var list = indexing(<Information>[
      Information(
          title: 'Infinity Gauntlet',
          description:
              'A gauntlet designed to hold the six Infinity Gems: Space, Soul, Reality, Power, Time, and Mind. With all the gems in the gauntlet, '
              'the wielder becomes nigh-omnipotent.',
          subInformation: infinityGauntletList),
      Information(
          title: 'Space Throne',
          description:
              'A floating throne which Thanos is often found sitting in.',
          subInformation: spaceThroneList),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Punched Mar-Vell from Saturn to Earth.',
      'Capable of overpowering the Hulk.',
      'Shattered Captain America\'s Proto-Adamantium shield with the Power Gem.',
      'One-shot the Thing.',
      'B*tch-slapped Hulk and Drax the Destroyer with ease.',
      'Beat Silver Surfer to near-death with a few punches.',
      'Broke the Cosmi-Rod.',
      'Has one-shot planets with his fist.',
      'One-shot Thor and the Thing with eye lasers.',
      'Can send Hulk flying with a single punch.',
      'Easily manhandles Beta Ray Bill & Ronan The Accuser.',
      'Casually caught Terrax\'s axe, which can split a planet in half at a weakened state.',
      'Fought against a blood-lusted Thor, enhanced by both the Power Gem and Warrior\'s Madness, and easily held his own with a smile.',
      'No-diffed Adam Warlock.',
      'One-shot Super Skrull.',
      'Drew blood from In-Betweener.',
      'Knocked out Jack of Heart.',
      'Lifted the Galactus engine from Ego\'s stomach.',
      'Knocked Black Dwarf out cold.',
    ];

    //speedList
    var speedList = <String>[
      'Easily dodges lasers.',
      'Easily dodged a flying Drax.',
      'Is able to dodge attacks from the Champion of The Universe.',
      'Capable of putting up an energy shield to block a blast from Silver Surfer from about 100 feet away.',
      'Can react to the entire Avengers roster attacking him from various angles at once.',
      'Casually stop The Fallen One with just a wave of his hamd who is trying to blitz him.',
      'Was able to travel through space like a comet at speeds of \"faster than the eye can track\".',
      'Reacted to Mlojnir.',
      'Moondragon failed a sneak attack.',
      'Jack of Hearts failed to blitz him.',
      'Dodged an attack from Ego.',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Was unfazed by the Silver Surfer\'s energy blasts.',
      'Survived being sucked in a black hole.',
      'Powered through the Nexus of Reality.',
      'Can tank attacks from Odin. Odin is powerful enough to destroy numerous galaxies.',
      'Can tank a well-fed Galactus\' attacks when he puts in marginal effort.',
      'Has tanked countless planets exploding point-blank without any visible harm.',
      'Withstood multiple screams from Black Bolt effortlessly.',
      'Effortlessely tanks a blast from Magnus at point-blank range.',
      'Has been banished from Death\'s realm in the past, which effectively makes him immortal during these periods.',
      'No-sold Drax’s energy projection.',
      'Tanked an attack from a weapon that was made to kill him.',
      'Tanked an attack from Ronan.',
      'Took a hit from a pissed off Thor w/ the Power Gem.',
      'The Maker/Kosmos couldn’t hurt him.',
      'Walker can\'t hurt him.',
    ];

    //skillList
    var skillList = <String>[
      'Is capable of holding his own against all of the Avengers at once.',
      'Has the most powerful pimp slap in fictional history.',
      'Has defeated top-tier Celestials and Cosmic Entities, including the One-Above-All, and enslaved 12 cosmic beings.',
      'Was able to make his own version of Galactus once (albeit a flawed one).',
      'Effortlessely defeated the Champion of the Universe.',
      'Managed to collect all the Infinity Gems from their protectors, outwitting extremely clever beings like the In-Betweener.',
      'Killed an army of Ovin Mercanary, the most feared group of bounty hunters, all because he was bored and had literally nothing to do.',
      'Outsmarted the Grandmaster at his own game.',
      'Turned Gamora of Earth-7528 into the \"Most Dangerous Woman in the Universe\".',
      'Defeated Terrax, who previously defeated Galactus\' other heralds.',
      'Is the most powerful Titan Eternal.',
      'Killed millions of his own race in a nuclear bombardment.',
      'Killed half the universe before it was undone.',
      'Fought the All-Father Odin to a stalemate.',
      'Threatened Mephisto (that’s for One More Day, you ass).',
      'Fought and defeated Thor with the Power Gem.',
      'He has been stated to be one of the most dangerous foes the Avengers have ever faced.',
    ];

    var list = indexing(<FeatsInfo>[
      FeatsInfo(title: 'Strength', descs: strengthList),
      FeatsInfo(title: 'Speed', descs: speedList),
      FeatsInfo(title: 'Durability', descs: durabilityList),
      FeatsInfo(title: 'Skill', descs: skillList),
    ]);

    return returnData<List<FeatsInfo>>(list);
  }

  @override
  List<CharacterDetailCategory> getCharacterDetailCategory() {
    var list = <CharacterDetailCategory>[
      CharacterDetailCategory(
        title: backgroundTitle,
        categoryType: CategoryType.Background,
        id: CategoryType.Background.index,
      ),
      CharacterDetailCategory(
        title: powersAbilitiesTitle,
        categoryType: CategoryType.PowersAbilities,
        id: CategoryType.PowersAbilities.index,
      ),
      CharacterDetailCategory(
        title: equipmentTitle,
        categoryType: CategoryType.Equipment,
        id: CategoryType.Equipment.index,
      ),
      CharacterDetailCategory(
        title: featsTitle,
        categoryType: CategoryType.Feats,
        id: CategoryType.Feats.index,
      ),
      CharacterDetailCategory(
        title: weaknessesTitle,
        categoryType: CategoryType.Weaknesses,
        id: CategoryType.Weaknesses.index,
      ),
      CharacterDetailCategory(
        title: cPWConclusionsTitle,
        categoryType: CategoryType.CPWConclusions,
        id: CategoryType.CPWConclusions.index,
      ),
      CharacterDetailCategory(
        title: funFactsTitle,
        categoryType: CategoryType.FunFacts,
        id: CategoryType.FunFacts.index,
      ),
    ];

    return list;
  }

  @override
  Future<List<Information>> getCPWConclusions() {
    var list = indexing(<Information>[
      Information(
          title: 'Victories',
          description: 'vs. Darkseid(DC Comics) - Darkseid\'s Profile'),
      Information(
        title: 'Losses',
      ),
    ]);
    return returnData<List<Information>>(list);
  }
}

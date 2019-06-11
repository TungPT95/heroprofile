import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/character_repos/character_repos.dart';

class HawkEyeRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Hank Pym was an ordinary biochemist living in America, who ended up marrying an escaped refugee from Hungary. Believing Hank\'s American citizenship'
        ' would protect her, the two traveled to Hungary for a vacation. However, Pym\'s wife was recognized by the secret police, and they ended up '
        'murdering her after knocking Hank out. Angered by his wife\'s death, Hank swore to do whatever he could to stop injustice and inhumanity. '
        'One day, Hank created a strange particle that could shrink objects to a much smaller size. After testing it on himself, Hank found that the serum was too powerful, '
        'shrinking him to the size of an ant. Once he managed to return to his normal size, Hank began studying the ants that attacked him while he was small.'
        ' Building a helmet to let him communicate with the ants, Hank decided to use his shrinking particle to help him fight crime, with the ants as his personal '
        'army, becoming the Ant-Man.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = <Information>[
      Information(
          title: 'Size-Shifting',
          description:
              'Using the Pym Particles he invented, Hank can change his size at will. He can reduce himself down to the size of an ant,'
              ' while retaining his strength from when he was normal-sized. As Giant-Man or Goliath, Hank can grow to a giant size, making him taller than even '
              'the largest buildings in New York. In this stage, Hank\'s strength and durability gain a massive boost. He can even grow to the point where he becomes '
              'larger than the microverse, entering the realm of abstract cosmic entities. While he originally required his Pym Particle serum to shrink and grow, '
              'he\'s absorbed so much Pym Particles over the years that his body naturally produces them, letting him change his size at will. '
              'Since he naturally produces Pym Particles, Hank can also expose others to them to change their size as well.'),
      Information(
          title: 'Dimensional Shifting',
          description:
              'By shrinking or growing to a certain extent, Hank can enter a subatomic realm, an alternate universe accessible to those who\'ve removed a majority of their mass.'),
      Information(
        title: 'Genius Intellect',
        description:
            'Hank Pym is one of Earth\'s leading scientific minds, with considerable expertise in various fields of science. He\'s been said to be one of the '
            'smartest people on the planet, and was even named Earth\'s Scientist Supreme by Eternity.',
      ),
    ];
    for (Information item in list) {
      item.id = list.indexOf(item);
    }
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = <Information>[
      Information(
          title: 'Reliant on his shield',
          description:
              'If someone was to get rid of it, he could be defeated by an opponent of similar strength and skill, '
              'which can be easily done, as his only method of ranged attacks if throwing it.'),
      Information(
          description:
              'Shield can be destroyed, although it could only be done by cosmic beings and gods'),
      Information(
          description:
              'Uniform has unarmored spots, such as his chin, mouth and eyes'),
    ];
    for (Information item in list) {
      item.id = list.indexOf(item);
    }
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getFunFacts() {
    var list = <Information>[
      Information(
          description:
              'Hank has had six different superhero identities over the years.'),
      Information(
          description:
              'He is considered the Marvel Comics counterpart of DC Comics the Atom.'),
    ];
    for (Information item in list) {
      item.id = list.indexOf(item);
    }
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var list = <Information>[
      Information(
          title: 'Ant-Man Suit',
          description:
              'Hank\'s superhero uniform, which allows him to shrink and grow without experiencing the mind-altering effects of the Pym Particle.'),
      Information(
          title: 'Cybernetic Helmet',
          description:
              'Ant-Man\'s helmet, which allows him to telepathically communicate with and control ants. He can use these ants either to distract or attack opponents, or as mounts.'),
      Information(
          title: 'Toolbot',
          description:
              'A small multi-tool device that stores hundreds of tools for Hank to use, such as a key, a minicomputer, and even an energy sword.'),
      Information(
          title: 'The Stinger',
          description:
              'A small firearm that converts Hank\'s bio-electric aura into powerful stun beams.'),
    ];

    for (Information item in list) {
      item.id = list.indexOf(item);
    }
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getAlternateForms() {
    var giantManList = <Information>[
      Information(description: 'Enhanced Strength'),
      Information(description: 'Enhanced Durability'),
    ];
    var yellowJacketList = <Information>[
      Information(description: 'Bio-Energy Projection'),
      Information(description: 'Flight'),
    ];
    var waspList = <Information>[
      Information(description: 'Bio-Synthetic Wings'),
      Information(description: 'Wasp\'s Sting'),
      Information(description: 'Wasp Goggles'),
    ];

    var list = <Information>[
      Information(
          title: 'Giant-Man',
          description:
              'After learning of the Pym Particle\'s ability to increase the size of objects as well, Hank Pym became Giant-Man. As Giant-Man, '
              'Pym uses his size-changing to grow to massive sizes, knocking foes off-balance with staggering blows.',
          subInformation: giantManList),
      Information(
        title: 'Goliath',
        description:
            'Despite fighting crime as Giant-Man for a while, Pym eventually retired the identity due to the strain growing placed on his body. However, '
            'to save his wife when she was kidnapped, he decided to use his growing powers again, becoming the superhero Goliath. Despite the change in '
            'name and appearance, Goliath\'s abilities are pretty much the same as Giant-Man\'s.',
      ),
      Information(
          title: 'Yellowjacket',
          description:
              'After being exposed to various unknown gases, Hank\'s personality underwent a radical change, and he took on the identity of Yellowjacket. '
              'Even after returning to his normal personality, Hank stayed as Yellowjacket for a while due to the strain of growing into his Giant-Man persona. '
              'As Yellowjacket, Hank retains the size-shifting and insect controlling abilities of Ant-Man, with some new powers as well.',
          subInformation: yellowJacketList),
      Information(
          title: 'Wasp',
          description:
              'After the death of his wife Janet van Dyne, Hank took on her superhero persona of the Wasp. As the Wasp, Hank still can change his size and '
              'control insects, but now has Janet\'s abilities as well.',
          subInformation: waspList),
      Information(
          title: 'Ultron',
          description:
              'During an attempt to kill his creation Ultron, Hank accidentally merged his body with Ultron\'s. This turned Hank into a cyborg, with his only remaining '
              'organic parts being his head and upper torso, though he can cover his organic parts in Ultron\'s upper body as armor. While merged with Ultron, '
              'he has all of Ultron\'s abilities. See the Ultron page for info on Hank\'s abilities as Ultron.'),
    ];

    for (Information item in list) {
      item.id = list.indexOf(item);
    }
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Has peak physical strength for a human, and retains it while shrunk.',
      'At ten feet tall, can press around 1000 pounds.',
      'At twenty-five feet tall, can lift 10 tons.',
      'At one-hundred feet tall, can lift 50 tons.',
      'Knocked back both Black Panther and Beast.',
      'Grabbed a wrecking ball and threw it backwards.',
      'Pulverized Ultron.',
      'Tore a building in half and lifted it over his head.',
      'Lifted Absorbing Man over his head.',
      'Lifted multiple people with ease while tearing a large ray gun apart.',
      'As Ultron, is just as strong as the original Ultron.',
    ];

    //speedList
    var speedList = <String>[
      'While giant, can travel several feet with one step.',
      'Shrunk and grew in quick succession to dodge attacks from Red Hulk.',
      'Flies at speeds up to 38 miles per hour as Wasp.',
      'Can easily dodge incoming projectiles.',
      'As Ultron, is just as fast as the original Ultron.',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Stayed standing after being hit by a large boulder.',
      'Survived hits from a wrecking ball.',
      'His durability increases with his size.',
      'As Ultron, is composed of adamantium, the toughest metal in the Marvel universe.',
    ];

    //skillList
    var skillList = <String>[
      'Invented the Pym Particle and Ultron.',
      'One of the five smartest people on the planet.',
      'Trained by Captain America in hand-to-hand combat.',
      'Has training in judo, karate, and wrestling.',
      'Has had six different superhero identities.',
    ];

    var list = <FeatsInfo>[
      FeatsInfo(title: 'Strength', descs: strengthList),
      FeatsInfo(title: 'Speed', descs: speedList),
      FeatsInfo(title: 'Durability', descs: durabilityList),
      FeatsInfo(title: 'Skill', descs: skillList),
    ];

    for (FeatsInfo item in list) {
      item.id = list.indexOf(item);
    }
    return returnData<List<FeatsInfo>>(list);
  }

  @override
  List<CharacterDetailCategory> getCharacterDetailCategory() {
    var list = <CharacterDetailCategory>[
      CharacterDetailCategory(
        title: backgroundTitle,
        categoryType: CategoryType.Background,
      ),
      CharacterDetailCategory(
        title: powersAbilitiesTitle,
        categoryType: CategoryType.PowersAbilities,
      ),
      CharacterDetailCategory(
        title: equipmentTitle,
        categoryType: CategoryType.Equipment,
      ),
      CharacterDetailCategory(
        title: alternateFormsTitle,
        categoryType: CategoryType.AlternateForms,
      ),
      CharacterDetailCategory(
        title: featsTitle,
        categoryType: CategoryType.Feats,
      ),
      CharacterDetailCategory(
        title: weaknessesTitle,
        categoryType: CategoryType.Weaknesses,
      ),
      CharacterDetailCategory(
        title: funFactsTitle,
        categoryType: CategoryType.FunFacts,
      ),
    ];

    for (CharacterDetailCategory item in list) {
      item.id = list.indexOf(item);
    }
    return list;
  }

  @override
  Future<List<Information>> getFaults() {
    // TODO: implement getFaults
    return null;
  }
}

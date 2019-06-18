import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/character_repos/character_repos.dart';

class CaptainAmericaRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Born July 4th in 1920, Steven Grant Rogers was the child of poor Irish immigrants, '
        'Sarah and Joseph Rogers. He had a frail youth, however, a strong sense of duty and honor. Soon, '
        'however, his father died and when he grew up to his teens, his mother died of pneumonia. '
        'When World War II broke out, Steve was alone. And seeing how the Nazis were destroying '
        'Europe made him feel like he needed to do something. When he tried to attend the military, '
        'though, he was rejected due to his frail body and sickly nature. Hearing about the boy\'s attempt, '
        'general Chester Phillips decided to talk to him about the experiment known as Project Rebirth.'
        '\n\nSteve accepted the offer and after weeks of tests, he was finally administered with the '
        'Super-Soldier Serum. His body and mind grew much more powerful and he was deemed as successful. '
        'However, a Nazi spy killed the doctor responsible for the project, leaving Steve as the only '
        'Super-Soldier ever developed during World War II. He immediately began training, both physical and mental, '
        'as his mind was being filled with false information in case of being captured by the enemy. '
        'He was being stuffed with info such as him having a brother and it would take until much later '
        'in his life that he remembered the truth. He was given the legendary white, blue and red costume '
        'alongside the disc-shaped shield made of Vibranium. He soon met a friend, Bucky Barnes and the two '
        'became inseparable friends during the War. On their last mission, however, Bucky was presumed dead '
        'when the two tried to stop a bomb-armed plane drone. The two fell into the freezing Arctic waters and the '
        'Captain was frozen solid, due to the Super-Soldier Serum protecting his bodily fluids from crystallization.'
        '\n\nYears and years later, Steve was discovered by the superhero team named Avengers. When they put him on '
        'a table, discussing what they should do with him, he bursted out of the block of ice. '
        'Confused and scared, he soon met Nick Fury, the leader of S.H.I.E.L.D. Fury reminded Rogers of his WWII past '
        'and after some time of getting used to the modern times, he was accepted as the leader of the Avengers.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = indexing(<Information>[
      Information(
          title: 'Parkour and Agility',
          description:
              'Cap is a master of parkour, capable of traveling rooftops in mere seconds. He can '
              'jump many feet in the air and perform flips and somersaults mid-air. '
              'Even Atlantean special guards have trouble keeping up with him.'),
      Information(
          title: 'Telepathic Defenses',
          description:
              'Quentin Quire was unable to break into Cap\'s mind, even when he dared him to do so.'),
      Information(
          title: 'Genius Level Intellect',
          description:
              'The Super-Soldier Serum not only made Rogers\' physical strength rise, but also his mental '
              'capabilities. He has didactic memory, is capable of breaking into top-secret military records '
              'with ease, outsmarted a trap designed to capture Skrulls and could tell Spider-Man multiple '
              'truths about him during their first encounter by just observing, such as his age.'),
      Information(
          title: 'Bravery and Willpower',
          description:
              'According to Hercules himself, gods on Olympus measure courage against Captain America, '
              'which does make sense considering his extreme bravery and sheer willpower. He himself says he\'ll '
              'never back down from a fight. He was capable of breaking mind control which took over Thor and '
              'values the lives of others more than he does his own, meaning he will do anything to protect them.'),
      Information(
          title: 'Leadership',
          description:
              'Rogers is a born leader, as he lead the Howling Commandos during World War II and ended up as '
              'the leader of the Avengers.'),
      Information(
          title: 'Excellent Strategist',
          description:
              'Steven states that he has learned military tactics from thousands of years of warfare.'),
      Information(
          title: 'Stealth',
          description:
              'Cap was capable of infiltrating a HYDRA base and even got the drop on Crossbones during their duel.'),
      Information(
        title: 'A Skilled Pilot',
      ),
      Information(
        title: 'Chi Manipulation',
      ),
      Information(
        title: 'Adept in Virtually any Weapon'
            'Beast of the X-Men admits that Cap is capable of mastering any weapon in seconds upon '
            'taking it into his hands.',
      ),
      Information(
        title: 'Proficient in Driving Any Kind of Vehicle',
      ),
      Information(
        title: 'Master Martial Artist',
        description:
            'Cap\'s training of the martial arts is extreme and one of the best in the Marvel Universe. Using '
            'his training and knowledge on pressure points and usage of nerve strikes, he is capable of taking '
            'on other Super-Soldiers, Atlanteans, Gambit, Beast, Lady Deathstrike, Rhino, a bar full of Asgardian '
            'trolls and an opponent who apparently knows every martial art in the world. Black Panther himself '
            'admits that Rogers can adapt to any fighting style.',
      ),
      Information(
        title: 'Superhuman Senses',
        description:
            'The Super-Soldier Serum granted Steven superhuman senses, mainly sight. He can turn on a lighter '
            'on the other side of the room by throwing his shield with his back turned and can feel such '
            'ridiculous things as air patterns shifting to detect his opponents.',
      ),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
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
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getFunFacts() {
    var list = indexing(<Information>[
      Information(
          description:
              'Captain America was born on the 4th of July, the American Independence Day.'),
      Information(
          title: '', description: 'Captain America has picked up Mjolnir.'),
      Information(
          description:
              'In the Marvel vs DC event, was merged with Superman to become Super-Soldier.'),
      Information(
          description:
              'In the Marvel vs DC event, was merged with Superman to become Super-Soldier.'),
      Information(
          description:
              'Captain America won the gold medal in an art contest as a teenager'),
      Information(
          description: 'Captain America was once mutated into "Spider-King"'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var list = indexing(<Information>[
      Information(
          title: 'Uniform',
          description:
              'His uniform is designed to protect Rogers from damage in case his shield fails to do so. '
              'It is both fire and bulletproof, therefore cannot be cut by ordinary sharp materials such as wood, '
              'iron or glass. It has a voice-controlled communicator in the left ear with its frequencies blocked, '
              'as well as a universal translator built by Hank Pym. It also comes with a utility belt, '
              'which contains a medkit holding tweezers, antiseptic coated band-aids, bone and muscle pain reliever '
              'sprays and some antidotes. The belt also holds a military cable, grenades, lock picks and gravity grips, '
              'which work as high-tech parachutes that slow down Cap\'s fall when he holds them upwards while falling.'),
      Information(
          title: 'Shield',
          description:
              'Captain America\'s most recognizable asset, the shield is made of Vibranium, steel and an unknown '
              'third alloy. The Vibranium in the shield absorbs all vibrations and protects whoever holds it from '
              'having them as much as stagger. The shield can be thrown, used to cut things or used in '
              'close-quarters-combat with extreme dexterity by Rogers. It is extremely sharp, being able '
              'to damage Onslaught , albeit only slightly. With a good throw, it can cut off a Tiger tank\'s '
              'turrret off and go as far as to cut up Iron Man\'s depowered Extremis Armor. '
              'The shield is extremely durable as well, being able to tank missiles, bullets, '
              'laser fire and even blows from Odinforce Thor.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Threw the mutant Big Bertha, who weighs 750 kilograms.',
      'Held up a collapsing skyscraper, twice.',
      'Pulled a mini-helicopter out of the air.',
      'Snapped a man\'s neck and made it turn 180 degrees with a single punch.'
          'Beat Nuke, who could tank gunfire and grenades, to a bloody pulp.',
      'Brought down reinforced steel doors while injured from being shot.',
      'As a rocket was about to launch, pushed the machinery responsible for opening the hatch and prevented it from opening.',
      'Threw an anchor into a runaway speedboat.',
      'Broke a statue made of stone with the chains that made him stuck to it.',
      'Lifts 1100 pounds (500 kilograms) as ordinary training.',
      'Restrained Wolverine.',
      'Threw a bike with enough force to crush a truck\'s engine.',
      'Ripped a tree out of the ground and picked it up.',
      'Can easily push a Bulldozer across a football field in less than 15 seconds.',
      'Shattered a wall with his punches.',
      'Can break a mini- submarine\'s window while underwater.',
      'Pushed a Nazi in a power armor and threw him off of his feet.',
      'Broke out of a S.H.I.E.L.D. containment device.',
      'Can throw people many feet in the air with one hand and once threw a man out of water while he was in it himself.',
      'Knocked down a heavily armored soldier by throwing his shield.',
      'Can send people flying with his kicks and shield bashes.',
      'Threw Ultron into a pillar, shattering a good portion of it.',
      'Threw two agents through a wall.',
      'Was stronger than the pull of an electromagnetic handcuff.',
      'Casually lifted a motorcycle with three women on it.',
      'Can throw his shield well enough for it to catch up, outspeed and cut through an ICB Missile, which travels from 13 to 15 thousand miles per hour.',
      'Caught a torpedo with his bare hands',
      'Threw The Hulk off his feet',
      'Stalemated Batman in the JLA/Avengers crossover.',
    ];

    //speedList
    var speedList = <String>[
      'A casual bullet timer.',
      'Can dodge bullets from multiple angles at once.',
      'Tagged a being with Quicksilver\'s speed.',
      'An Atlantean couldn\'t keep up with him.',
      'Blocked point-blank gunfire with his shield.',
      'After he\'s been surrounded and attacked with a flamethrower, jumped out of the circle and his opponents didn\'t even notice.',
      'Outran Diamondback.',
      'Dodged close-range energy rays from Crossbones.',
      'Landed on a moving plane after being punched into the sky.',
      'Blocked bullets, which were already fired, by throwing his shield.',
      'Blitzed a group of thugs.',
      'Dodged blasts of Ultron.',
      'Caught up to a mini-submarine by swimming.',
      'Kept up with Daredevil. DD himself admitted that Rogers is faster than he is.',
      'Blocked a punch from another superhuman from behind.',
      'Can dodge lasers, even in Zero G.',
      'Dodged explosions of tripwires after he already stepped on them.',
      'Can run 60 miles per hour (96.6 kmh).',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Held on after being blasted with a helicarrier engine.',
      'Took on an army after carving a hole in his chest.',
      'Doesn\'t flinch when he fell from a plane with enough force to crush a car.',
      'Tanked a point-blank explosion from Gambit.',
      'Took a hit from Namor hitting him with his own shield.',
      'A doctor said he had no broken bones after being beaten by Red Skull in a mech and having a building collapse on top of him.',
      'Survived a plane crash without his shield.',
      'Took a beating from Iron Man.',
      'Was completely fine after being shot seven times in one arm without his suit.',
      'Got blasted off by a grenade explosion and flew through a bus, although he had his shield to protect him from the direct blast.',
      'Survived being frozen in ice for 70 years',
      'Drops from airplanes at cruising altitude into water without a parachute no problem',
    ];

    //skillList
    var skillList = <String>[
      'A WWII veteran.',
      'Messed with HYDRA\'s plans on multiple occasions.',
      'Has stopped multiple alien invasions.',
      'Was one of the main reasons of the Nazi\'s defeat during WWII.',
      'Stalemated Black Panther\'s father, T\'Chaka back during WWII.',
      'Defeated Beast in combat.',
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
        title: funFactsTitle,
        categoryType: CategoryType.FunFacts,
        id: CategoryType.FunFacts.index,
      ),
    ];

    return list;
  }
}

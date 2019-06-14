import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/character_repos/character_repos.dart';

class SpiderManRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'After getting bit by a radioactive spider, 16 year old Peter Parker discovered that he got super strength, speed, agility and a '
        'spider-sense. After seeing an advertisement, he decided to test his powers on a wrestler. Peter easily defeated the wrestler '
        'and got the money he was promised. After that, Peter designed a device that can shoot webs, which he called "web shooters" and a new '
        'costume. Peter, who now called himself Spider-Man, was an immediate hit. Once, after a show, he encountered a burglar. '
        'Instead of stopping him, Peter decided to let him go. The police officer that was chasing after him remanded Peter. However, '
        'he just say that it was not his problem.'
        '\n\nLater, he was heading home, he saw that his house was surrounded by police. When he asked a police officer, he was informed that his uncle '
        'Ben was killed by a burglar and that the burglar was currently being surround in a warehouse.'
        '\n\nQuickly donning his costume, Spider-Man went to the warehouse with revenge in his mind. When he caught the burglar, he looked '
        'at the burglar. He quickly realized that it was the same person he should have stopped. From that day on, Peter decided to use '
        'his powers to fight crime.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var spiderDNAList = indexing(<Information>[
      Information(description: 'Superhuman Physique'),
      Information(description: 'Skilled Acrobat'),
      Information(description: 'Spider-Sense'),
      Information(description: 'Wall-Crawling'),
      Information(description: 'Regeneration'),
    ]);
    var list = indexing(<Information>[
      Information(
          title: 'Spider DNA',
          description:
              'After being bitten by a radioactive spider, Peter inherited its DNA and many of its traits.',
          subInformation: spiderDNAList),
      Information(
          title: 'Vast Intellect',
          description:
              'Peter has a gifted mind, and he possessed genius level intellect that rivals some of the smartest minds in Marvel. He '
              'officially has an IQ over 250, and he has personally invented several gadgets over the years, like his famous web shooters.'),
      Information(
          title: 'Way of the Spider',
          description:
              'A combination of Peter\'s bullying experiences, Captain America and Shang-Chi\'s respective training, and '
              'his own superhuman capabilities, it was originally created to compensate for his Spider-Sense leaving him. Later on, combines it with '
              'his Spider-Sense for increased effectiveness and to counter all types of combatants. The Art Focuses on getting up close and personal, '
              'performing quick and powerful strikes using his speed and strength, and targeting nerve clusters, pressure points, and weak areas of the body.'),
      Information(
          title: 'Women Magnetism',
          description:
              'Peter has had more girlfriends/potential love interests than any superhero ever known. Chicks love him.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          title: 'Ethyl Chloride Pesticide',
          description:
              'Due to his spider DNA, Peter is vulnerable to the spider-killing ethyl chloride pesticide.'),
      Information(
          title: 'Spider-Sense Limitations',
          description:
              'While very useful in a fight, the Spider-sense isn\'t 100% reliable since some people like Venom for example, are'
              ' either completely immune to it, or too fast for the Spider-Sense to detect in time.'),
      Information(
          title: 'Secret Identity',
          description:
              'On the few occasions when Spidey\'s identity was revealed, his loved ones were put onto danger by his enemies. '
              'For example, what many consider the turning point for light-hearted comics, Peter\'s girlfriend Gwen Stacy was killed in a '
              'fight with the Green Goblin.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var list = indexing(<Information>[
      Information(
          title: 'Web-Shooters',
          description:
              'Peter has designed devices that shoot a \"strong liquid cement\" that rapidly cools into a substance approximating spider '
              'silk. He can use this to tie up criminals, swing from tall buildings, or use them as various tools including: a shield, '
              'a parachute, skis, safety net, a raft, barrier, ball, or sticky glue, and wrap around his hands as makeshift boxing gloves, '
              'or even to bind wounds. The webbing dissolves in an hour.'),
      Information(
          title: 'Spider-Tracers',
          description:
              'Used by Spider-Man to track who or whatever they latch on to. They can also be shot from the Web Shooters for greater '
              'range and accuracy. They work by emitting a signal that Spider-Man can detect in a 100-yard radius.'),
      Information(
        title: 'Utility Belt',
        description:
            'A belt that Spider-Man wears that holds web cartridges, freeze capsules, new Spider-Tracers that are now wired for sound, '
            'and a newly upgraded Spider-Signal that has a UV light setting for forensic analysis.',
      ),
      Information(
          title: 'Spider Armor MK IV',
          description:
              'Spider-Man\'s most advance suit, modeled after his original red and blue costume and created from Parker Industries\' best resources. Composed '
              'of unknown, lightweight material that provides protection for Spider-Man without lowering his speed. Has holographic projectors that can be '
              'used to disguise the suit. Has built-in Web Shooters in each forearm.'),
      Information(
          title: 'Webware',
          description:
              'A wrist device created by Parker Industries that allows affordable internet access with clear reception and unlimited data anywhere on Earth. '
              'It is water proof and can also track Spider-Tracers.'),
      Information(
          title: 'Spider Mobile',
          description:
              'Spider-Man’s personal ride. Created by him with the help of Lian Tang, a designer at the Shanghai branch of Parker Industries. '
              'It can drive at 88 miles per hour and it can drive on walls and ceilings. It has a voice-operated computer system, web-fluid airbags, and '
              'its wheels can be unfolded into spider-like legs.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Lifted over 15 tons.',
      'Knocked out a dinosaur with one punch.',
      'Can hold up section of collapsing buildings.',
      'With the Mark of Kaine, was able to pull off Iron Man\'s armor.',
      'Broke through Doctor Octopus’ titanium-steel tentacles.',
      'Lifted a 30 ton train car.',
      'Can rip and bend apart steel beams.',
      'Lifted a falling skyscraper.',
      'Freed himself from tons of metal and debris.',
      'Stopped a speeding truck with his bare hands.',
      'Can lift huge amounts of rubble',
      'One-shotted Quicksilver',
      'Lifted a machine which outweights a locomotive.',
    ];

    //speedList
    var speedList = <String>[
      'Regularly dodges automatic fire.',
      'Outruns cars and trains.',
      'His top speed is stated to be 250 mph.',
      'Can dodge a 4,000 ft per second firearm from 2 meters away without his Spider-Sense.',
      'Tagged Speed Demon, who can travel at supersonic speeds.',
      'Blitzed Absorbing Man.',
      'Caught Electro of guard.',
      'Maneuvered his way through a laser system with ease.',
      'Can dodge Iron Man\'s Repulsor Blasts.',
      'Caught Quicksilver.',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Took a grenade to the face.',
      'Survived being hit by a high-speed car.',
      'Regularly takes punches full-force by multiple super-powered villains.',
      'Didn’t flinch from punches to the face by the Punisher.',
      'Spider Armor MK IV was able to endure a battle against the Human Torch.',
      'Survives a massive amount of electricity.',
      'Survived an explosion capable of destroying buildings.',
      'Can survive strikes from godlike characters like the Hulk.',
    ];

    //skillList
    var skillList = <String>[
      'Beat the Hulk.',
      'Once stomped Wolverine in battle.',
      'Can go up against the likes of Captain America in hand-to-hand combat while blindfolded.',
      'Destined teacher of Hope Summers, the ultimate mutant.',
      'Has an IQ of 250, and even Reed Richards and Hank Pym noticed his intellect.',
      'Created three Spider-Armors, the Spidey Stealth Suit, his own web-shooters, the Cryo-Cube 3000, noise reduction headphones, and his own spider webbing.',
      'Honorary member of the Fantastic Four.',
      'Defeated Quicksilver with his Spider-Sense.',
      'Has held on his own against the likes of the Fantastic Four and even the X-men.',
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
    ];
    return list;
  }
}

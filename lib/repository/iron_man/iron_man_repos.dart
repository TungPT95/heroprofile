import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/character_repos/character_repos.dart';

class IronManRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Howard and Maria Stark were billionaire weapon manufacturers who wanted to have a child. '
        'They tried to make one themselves, but due to problems Maria was facing the baby was doomed to die. '
        'To save the child, Howard desperately used his immense wealth to search across the world '
        'for a cure to the child\'s illness. In his travels he ended up saving an alien known as '
        'Rigellian Recorder 451. Recorder saw potential in Earth\'s future but also feared it '
        'would be crushed by other, more advanced races. To give Earth a fighting chance and thank '
        'Howard for his troubles, Recorder offered to genetically engineer the unborn baby for Howard '
        'and Maria to give him the intellectual power needed to bring the world to a new age of '
        'technology. Howard graciously accepted, and Arno Stark was born after a five month procedure. '
        'Unfortunately, Arno\'s health quickly degenerated to the point where he\'d need medical help to '
        'survive for the rest of his life. Because his condition was so poor, Howard and Maria just decided '
        'to adopt the young Anthony Edward Stark.'
        '\n\nTony grew up a rich man\'s childhood, without a care in the world and the greatest education. '
        'Tony\'s relationship with his father was rather strained, as he was abused and even forced to have '
        'his first alcoholic drink. Howard also forced into Tony his philosophies of war and how people '
        'have to clean up their own messes. At the age of 6, Tony began boarding school. Academics came '
        'easy to Tony, and he blitzed his way through school. When he was 15, he joined an MIT undergraduate '
        'program. By the time he was 17, Tony had already graduated with 3 PhDs under his belt. '
        'Life seemed peachy for young Tony, until the day tragedy struck.'
        '\n\nHoward and Maria were killed in a car crash orchestrated by one of Stark Industries\' '
        'rivals, leaving Tony the heir of their fortune and company. Under his guidance, '
        'Stark Industries thrived. Tony lived for war, and loved his job of manufacturing weapons. '
        'He also lived a life of reckless partying and debauchery until the day he was in Pakistan '
        'demonstrating the power of his weapons. One managed to blow up in his face, leaving a piece of '
        'shrapnel piercing his chest and sinking towards his heart. While unconscious, '
        'Tony captured by the Ten Rings terrorist group in Pakistan. Held at gunpoint, '
        'the group forced the billionaire to engineer bombs for them and receive treatment for the shrapnel '
        'or be left to die. Being as clever as he is, Tony instead built a chest plate that would stop the '
        'shrapnel from killing him, then he built a mech suit around it. With his suit, he escaped the camp '
        'and dedicated his life to heroism. After returning from Pakistan, Tony spent his days fighting '
        'crime and eventually forming superhero groups like the Avengers.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = indexing(<Information>[
      Information(
          title: 'Super-Genius Intellect',
          description:
              'Tony is easily one of Marvel\'s smartest humans. With his intellect, '
              'he has hacked technology centuries ahead of his time. His mind is said to '
              'be geared towards the future, giving him the ability to predict '
              'future events through intuition.'
              ' He has demonstrated this with the events of Civil War, which he foresaw would '
              'occur years before it happened.'),
      Information(
          title: 'Master Engineer',
          description:
              'Engineering is Tony\'s forte. He is capable of building and repairing '
              'nearly anything his mind can dream up, such as his Iron Man suits.'),
      Information(
          title: 'Expert Tactician',
          description:
              'Tony has a knack for tactical warfare, being able to set enemies into complex,'
              ' precarious traps that they cannot escape. Part of his skill comes from his'
              ' supernatural ability to multitask, having the ability to pilot 3 Iron Man suits '
              'effectively at once with no hindrance to his abilities.'),
      Information(
          title: 'Skilled Unarmed Fighter',
          description:
              'Being taught by the likes of Captain America and Black Panther, '
              'Tony has become rather proficient in hand-to-hand.'),
      Information(
          title: 'Master Businessman',
          description: 'Being raised by investors and company owners, it\'s '
              'only natural that Tony would have skills as a businessman. '
              'His skill goes above and beyond, however, as he has actually lost '
              'and rebuilt his fortune in a matter of weeks. Multiple times.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          title: 'Humanity',
          description:
              'When separated from his armor, Tony is just an athletic human with decent martial art skills.'
              ' He can be killed with any conventional weapon when outside the suit.'),
      Information(
          title: 'Alcoholism',
          description:
              'Tony is a total drunk, and occasionally pilots a suit while intoxicated, lowering his efficiency. '
              'He can be easily pressed into excessively drinking in the right circumstances.'),
      Information(
          title: 'Recklessness',
          description:
              'While Tony is utterly brilliant, he tends to rush head first into battle and pushes his suits way past their limits, which often ends in disaster.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getFunFacts() {
    var list = indexing(<Information>[
      Information(
          description:
              'Iron Man was explicitly made to test Stan Lee\'s skill as a character creator, '
              'as he was specifically given features most people of the time despised.'),
      Information(
          description:
              'Iron Man is the owner of Area 51 as proven in Avengers Vol 4 #10'),
      Information(
          description:
              'Iron Man claimed to have beaten Mr. Fantastic in chess twice.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var armorSubInfoList = indexing(<Information>[
      Information(description: 'Enhanced Strength'),
      Information(description: 'Enhanced Durability'),
      Information(description: 'Enhanced Speed'),
      Information(description: 'Flight'),
      Information(description: 'Repulsor Blasts'),
      Information(description: 'Laser Beams'),
      Information(description: 'Pulse Bolts'),
      Information(description: 'Smart Missiles'),
      Information(description: 'Anti-Tank Missiles'),
      Information(description: 'EMP'),
      Information(description: 'Laser Sword'),
      Information(description: 'Life Support Systems'),
      Information(description: 'Energy Conversion Recharge'),
      Information(description: 'J.A.R.V.I.S.'),
      Information(description: 'Magnetism'),
      Information(description: 'Visual Sensors'),
      Information(description: 'Override'),
    ]);

    var list = indexing(<Information>[
      Information(
          title: 'R.T. Node',
          description:
              'Using the same technology as his repulsors, Tony made an implant in his chest that prevents the shrapnel from reaching his heart. '
              'It has some defensive properties, however, and can discharge electricity to attack enemies when unarmored.'),
      Information(
          title: 'Psychic Shield',
          description:
              'Due to his affiliation with S.H.I.E.L.D., Tony is implanted with a device that blocks out the strongest of telepaths.'),
      Information(
          title: 'Iron Man Armor',
          description:
              'To stand up to the gods in his Universe, Tony has constructed many mech suits of armor that aid him in combat. '
              'Their hulls are generally made of a gold-titanium alloy and the suit adds 5 inches to his height.',
          subInformation: armorSubInfoList),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getAlternateForms() {
    //hulkBusterInfoList
    var hulkBusterInfoList = indexing(<Information>[
      Information(description: 'Immense Strength'),
      Information(description: 'Immense Durability'),
      Information(description: 'Gamma Sensors'),
    ]);

    //bleedingEdgeInfoList
    var bleedingEdgeInfoList = indexing(<Information>[
      Information(description: 'Nanomachine Composition'),
      Information(description: 'Repulsor Eyeballs'),
    ]);

    //endoSymInfoList
    var endoSymInfoList = indexing(<Information>[
      Information(description: 'Symbiotic Metal Physiology'),
      Information(description: 'Enhanced Repulsor Blasts'),
      Information(description: 'Energy Absorption'),
      Information(description: 'Fire & Sound Vulnerability'),
    ]);

    //endoSymInfoList
    var stealthInfoList = indexing(<Information>[
      Information(description: 'Light Bending'),
      Information(description: 'Hologram Generation'),
      Information(description: 'Silenced Weapons'),
      Information(description: 'Weakened Weaponry'),
    ]);

    //endoSymInfoList
    var modelPrimeInfoList = indexing(<Information>[
      Information(description: 'Scaly Surface'),
      Information(description: 'Intangibility Immunity'),
      Information(description: 'Enhanced Repulsor Blasts'),
      Information(description: 'Emergency Ejection'),
      Information(description: 'Sound and EMP Immunity'),
    ]);

    var list = indexing(<Information>[
      Information(
          title: 'Hulkbuster',
          description:
              'A suit built specifically to combat the Hulk, the Hulkbuster is an armor that is powered by hydraulic presses and outer casing '
              'that fits over most other suits. On top of having all of the average suit\'s powers, the armor gains',
          subInformation: hulkBusterInfoList),
      Information(
          title: 'Bleeding Edge',
          description:
              'The Bleeding Edge was developed so Tony and Iron Man would become one and the same. Built in seperate pieces, '
              'he stored the armor inside his bones, allowing him to suit up at will without the need for a suitcase. '
              'The entire suit is composed of nanomachines rather than metal, making it one of Tony\'s most versatile suits.',
          subInformation: bleedingEdgeInfoList),
      Information(
          title: 'Endo-Sym',
          description:
              'Tony\'s most advanced suit, he created the Endo-Sym after moving to San Francisco. Based off of the biology of symbiotes like Venom and Carnage, '
              'it is a liquid smart metal suit that hardens on contact to skin. The two share a psychic link that Iron Man uses to control the suit.',
          subInformation: endoSymInfoList),
      Information(
          title: 'Stealth',
          description:
              'For covert operations, Tony has created an Iron Man Armor that is specifically designed for stealth. '
              'With it, he is nigh undetectable by any means whatsoever, allowing him to sneak into wherever he is needed.',
          subInformation: stealthInfoList),
      Information(
          title: 'Model-Prime',
          description:
              'Tony\'s latest suit, it was built when an MIT student reverse-engineered some of his earlier suits. To stay ahead, '
              'Tony built Model-Prime with completely new technology, technological scales that composed the suit. '
              'The scales built to mimic the abilities of several of his past suits, acting as an all-in-one tool to replace the need for specialized armor.',
          subInformation: modelPrimeInfoList),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Strong enough to be able to hurt the Hulk with some suits.',
      'Can regularly lift 100 tons.',
      'Once lifted and threw a 16,000 ton nuclear reactor using his Override.',
      'Strong enough to bend metal girders with his suit\'s hands',
      'Lifts up cars with one hand',
      'Once injured Sentry.',
      'One-shot She-Hulk in an older suit.',
      'Hurt and defeated Red Hulk.',
      'Matched Doctor Doom in strength.',
      'One-shot an empowered Ulik, who can completely overpower Thor, with a repulsor blast.',
      'Rips a plane in half with ease.',
      'When his suit was amped, managed to break through Doctor Doom\'s shields.',
      'Can create shockwaves by punching the ground.',
      'Lifted the foot of his adamantium giant.',
      'Blew up a rock the size of Manhattan.',
      'In Endo-Sym, decimated Hulkbuster Mk. II faster than Worldbreaker Hulk did.',
    ];

    //speedList
    var speedList = <String>[
      'Once flew to Mach 8 speeds.',
      'Can surpass light speed and even achieve warp speed with some suits.',
      'Defeated Crimson Dynamo in 4 milliseconds.',
      'Traveled from New York to Latveria in seconds.',
      'Can accelerate to Mach 4 from take off nearly instantly.',
      'Dodges point blank lightning.',
      'Escaped a black hole.',
      'Dug his way out of the Earth\'s core all the way up to the surface in 43 seconds.',
      'Can travel between stars in his earlier suits.',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Once flew to Mach 8 speeds.',
      'Can surpass light speed and even achieve warp speed with some suits.',
      'Defeated Crimson Dynamo in 4 milliseconds.',
      'Traveled from New York to Latveria in seconds.',
      'Can accelerate to Mach 4 from take off nearly instantly.',
      'Dodges point blank lightning.',
      'Escaped a black hole.',
      'Dug his way out of the Earth\'s core all the way up to the surface in 43 seconds.',
      'Can travel between stars in his earlier suits.',
    ];

    //skillList
    var skillList = <String>[
      'Is able to match Captain America in skill.',
      'Defeated Hulk in combat.',
      'Hacked into Kree technology, which is centuries ahead of humanity\'s own tech.',
      'Has lead many teams, including the Avengers.',
      'Hacked Doctor Doom, the second smartest person on Marvel\'s Earth.',
      'Claimed to be almost as smart as Reed Richards, the smartest person on Marvel\'s Earth, as well as the \"World\'s Best Multitasker.\"',
      'Can match Doctor Doom, who has centuries of experience, in hand to hand combat.',
      'Managed to split apart the Phoenix Force.',
      'Created over 50 Iron Man suits, all of which use cutting edge technology ahead of its time.',
      'Created an Iron Man armor with limited resources in a matter of a few days.',
      'Has fought an empowered Thor to a near standstill with Thorbuster.',
      'First human to possess the reality-warping Infinity Gauntlet',
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
        title: alternateFormsTitle,
        categoryType: CategoryType.AlternateForms,
        id: CategoryType.AlternateForms.index,
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

import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/character_repos/character_repos.dart';

class DoctorStrangeRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Stephen Vincent Strange was born as the oldest of the 3 children of Eugene and Beverly Strange in Philadelphia in 1930. From a very young age, Stephen '
        'had been destined to replace his future master, Yao the Ancient One, as Sorcerer Supreme. However, he was oblivious to this fate for much of his life,'
        ' and grew up caring for little but wealth due to the harsh views of his father. After helping his sister Donna when she was sick, Stephen had grown an interest '
        'in medicine. This fueled his future as he earned his medical degree at Colombia University. His inevitable success as a surgeon fueled his arrogance and greediness, '
        'until the day he suffered a terrible car crash. The event left the nerves in his hands irreparably damaged and left them unusable, essentially ending his '
        'medical career. After desperately trying countless, often shady operations to fix his hands, Stephen heard legends of a powerful sorcerer named the Ancient '
        'One who could repair his hands, he traveled to Tibet to meet this wizard. However, the Ancient One refused to repair Stephen\'s hands and instead offered to '
        'teach him magic. Though initially refusing, a powerful blizzard kept him in the palace where he reluctantly agreed. For years The Ancient One taught Stephen '
        'the ways of magic, where he had a rival in the jealous Karl Mordo, a fellow student of the Ancient One who was aware of Stephen\'s fate as the next Sorcerer '
        'Supreme. A final test awaited Strange, a challenge given by Death herself. When he completed the task, Stephen was granted immortality and took on the mantle '
        'of Sorcerer Supreme. Ever since then, he has been protecting Earth as its most powerful spellcaster from the evils of great evils like Dormammu and Shuma-Gorath.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var magicList = indexing(<Information>[
      Information(
          description: 'Immortality'
              'Arcanum Exo'),
      Information(description: 'The Incantation of Oblivion'),
      Information(description: 'Invisible Shield of Everlasting Enchantment'),
      Information(description: 'Darkness of the Divine Conduit'),
      Information(description: 'The Words'),
      Information(description: 'Astral Projection'),
      Information(description: 'Catastrophe Magic'),
      Information(description: 'Bolts of Balthakk'),
      Information(description: 'Fangs of Farallah'),
      Information(description: 'Demons of Denak'),
      Information(description: 'Moons / Mists of Munnopor'),
      Information(description: 'Icy Tendrils / Wastes of Ikthalon'),
      Information(description: 'Chains of Krakkan'),
      Information(description: 'Vapors / Vipers of Valtorr'),
      Information(description: 'Mists of Morpheus'),
      Information(description: 'Nirvalon'),
      Information(description: 'Seven Suns of Cinnibus'),
    ]);

    var list = indexing(<Information>[
      Information(
          title: 'Magic',
          description:
              'All of Doctor Strange\'s powers come from magic, which he can manipulate to do nearly anything he wishes',
          subInformation: magicList),
      Information(
          title: 'Master Surgeon',
          description:
              'Before he was Sorceror Supreme, Stephen was renowned as one of the greatest surgeons on Earth. As such, he has unmatched skills with '
              'precision and an extensive knowledge on the human body.'),
      Information(
          title: 'Skilled Strategist',
          description:
              'Strange has shown to be rather proficient at coming up with effective strategies to take down foes almost as powerful as himself in the midst of an intense fight.'),
      Information(
          title: 'Master Martial Artist',
          description:
              'To defend himself when his magic fails, Strange has learned multiple forms of hand-to-hand combat from various teachers. He has been taught '
              'from the likes of Tibetan monks to his good friend Wong.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          title: 'Humanity',
          description:
              'Even though Strange is an extremely powerful sorcerer, he is still human. Thus if he is hit before he can create a barrier, it will do '
              'as much damage to him as it would to anyone else.'),
      Information(
          title: 'Equipment Dependence',
          description:
              'Though much of his power comes from powerful gods, a great deal of his strength comes from his magical artifacts that can be disarmed or destroyed.'),
      Information(
          title: 'Cantation Dependence',
          description:
              'Strange requires his hands and mouth to be free to cast his spells, and can be bound and gagged to prevent most of his spellcasting.'),
      Information(
          title: 'Deity Dependence',
          description:
              'Since most of his power comes from gods, Strange relies on his connection and relationship with them to use many of his spells. Should he anger a '
              'god in any way, or disregard a favor he needs to return, Stephen can lose the vast majority of his magic.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var eyeAgamottoList = indexing(<Information>[
      Information(description: 'Light of Truth'),
      Information(description: 'Telepathy'),
      Information(description: 'Telekinesis'),
      Information(description: 'Shield'),
      Information(description: 'Cross-Dimensional Flight'),
      Information(description: 'Time Manipulation'),
      Information(description: 'Merging with Eternity'),
    ]);
    var cloakLevitationList = indexing(<Information>[
      Information(description: 'Flight'),
      Information(description: 'Semi-Sentience'),
    ]);
    var orbAgamottoList = indexing(<Information>[
      Information(description: 'Divination'),
      Information(description: 'Trapping'),
      Information(description: 'Summoning'),
      Information(description: 'Enhanced Senses'),
    ]);
    var wandWatoombList = indexing(<Information>[
      Information(description: 'Energy Manipulation'),
      Information(description: 'Scrying'),
      Information(description: 'Elemental Manipulation'),
    ]);
    var weaponItemArtifactsList = indexing(<Information>[
      Information(description: 'Axe of Angarrumus'),
      Information(description: 'Staff of Dravid'),
      Information(description: 'Sword of the Ultimate Shadow'),
      Information(description: 'Serum of the Seraphim'),
      Information(description: 'Oculus Oroboros'),
      Information(description: 'Scrolls of Watoomb'),
    ]);
    var supportArtifactsList = indexing(<Information>[
      Information(description: 'Hands of the Dead'),
      Information(description: 'Atlantean Dreamwave'),
      Information(description: 'Book of Demonicus'),
      Information(description: 'Brazier of Bom\'Galiath'),
      Information(description: 'Tome of Oshtur'),
      Information(description: 'Ring of the Ancient One'),
      Information(description: 'Crystal of Kadavus'),
      Information(description: 'Hand of the Vishanti'),
      Information(description: 'Scroll of Eternity'),
      Information(description: 'Purple Gem'),
    ]);
    var list = indexing(<Information>[
      Information(
          title: 'Eye of Agamotto',
          description:
              'A powerful magic talisman given to Strange by Eternity himself to fight the evils of Dormammu, The Eye of Agamotto is Stephen\'s most powerful artifact.',
          subInformation: eyeAgamottoList),
      Information(
          title: 'Cloak of Levitation',
          description:
              'Doctor Strange\'s signature, nigh indestructible cloak that he wears around his neck and grants him a few benefits.',
          subInformation: cloakLevitationList),
      Information(
          title: 'Orb of Agamotto',
          description:
              'A very powerful mystic artifact that Strange typically uses to view the happenings of the Universe.',
          subInformation: orbAgamottoList),
      Information(
          title: 'Book of the Vishanti',
          description:
              'A defensive tome of White Magic that Strange can use for every counter-spells known for any kind of magic, deflecting spells of all '
              'varieties and once even dispeling time manipulation from the Time Gem.'),
      Information(
          title: 'Wand of Watoomb',
          description:
              'One of six wands that Strange can use to manipulate magical energies.',
          subInformation: wandWatoombList),
      Information(
          title: 'Weapon/Item Artifacts',
          subInformation: weaponItemArtifactsList),
      Information(
          title: 'Support Artifacts',
          description:
              'These artifacts are used less-so for combat purposes and more-so for knowledge and dimensional travel.',
          subInformation: supportArtifactsList),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getAlternateForms() {
    var list = indexing(<Information>[
      Information(
        title: 'Merged with Eternity',
        description:
            'When pushed into a corner he cannot back out of, Strange has the ability to call upon the powers of Eternity, Marvel\'s personification of time and '
            'the ruler of the entire Marvel Universe, to become one with the Cosmic Entity. In this state, all of Stephen\'s spells are drastically '
            'amplified in raw strength and he has power that can dwarf the concept of Death herself. ',
      ),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Magical blasts can stagger Galactus.',
      'Created a barrier strong enough to block a maelstorm that was tearing through the void of eternity.',
      'Forced a living star to go supernova and collapse into a black hole before hurling it into the Wheel of Change.',
      'Destroyed an aspect of the Wheel of Change, a device capable of altering the Universe.',
      'Used all of his power to reverse the True Wheel of Change, causing the universe to turn in on itself.',
      'One-shooted Nova with a single blast, one of Galactus\' heralds.',
      'Even in his weakened state, took out dozens of ice giants with a minor spell, something Thor has a hard time taking down.',
      'Even after fighting for 48 hours straight, has enough power to to raise a full-sized moon of its axis and blow it up.',
      'Launched a series of energy attacks that rivals the force of a supernova.',
      'Destroyed the ego of the Ancient One, banishing Shuma-Gorath',
      'Dr. Strange fought Zom, an extra dimensional entity whose power was so vast and feared that Eternity, the embodiment of all there is and while he '
          'was not able to kill him. He was able to imprison him',
      'Destroyed a whole dimension after deeming it too horrible to exist.',
      'Inscribed a mystic circle and seal using the very soul itself. Strange then wielded that power, described as pure life itself and capable of shaping or shaking a universe.',
      'Overpowered an alternate version of himself who was enhanced by a portion of Eternity\'s power.',
      'Merged with Eternity to overpower Death herself.',
    ];

    //speedList
    var speedList = <String>[
      'Able to fly more than one lightyear in four days.',
      'Reacted to a speedblitz from Silver Surfer by shielding himself on time.',
      'Flew so fast that he created a vortex, pulls the fire in and snuffs it.',
      'Flew so fast that he warped time into a neverending loop, which he then dispeled with the Eye of Agamotto.',
      'Flew from the edge of the Universe to Adam Warlock in mere seconds when he was teleported away by the Infinity Gauntlet.',
      'Outran the Big Bang',
      'Dodged strikes from Dormammu',
      'Flew so fast that time appeared suspended',
      'Reacted to laserfire shot at him by Yandroth',
      'Reviewed a hundred spells in a second',
      'Outsped Umar\'s spell and creates a counterspell in time',
      'Moved almost so fast that Umar, who is almost equivalent to Dormammu in power was caught unaware',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Survived a reality-warping ragdolling from the In-Betweener.',
      'Took a thunderclap from an enraged Zom.',
      'Survived the Second Big Bang',
      'Survived being collapsed as 2-D.',
      'Survived being imprisoned in a sphere of nuclear flames.',
      'Still able to talk and survived being crushed under a pure column of force generated by Umar.',
      'Took a sucker punch to the face by a pissed-off Hulk.',
      'Took a full-powered blow to the back by Juggernaut.',
      'Survived a supernovas change into a blackhole, and managed to take control over it and corks it',
      'Nightmare, even in his own dimension, can’t directly harm Strange with his enchantments',
      'Strange survived the atomic energy at the Sun’s core which can even trigger the destruction of astral forms',
      'Strange\'s shield protected him from the maelstrom that was tearing across the void of Eternity',
      'Strange\'s mystic shield protected him against a maelstrom of cosmic winds, which Dormammu stated can \"topple planets from their orbits\"',
      'Blocked a barrage of mystic bolts from Umar, Dormammu\'s sister',
      'Shield protected him from Umar\'s most potent beam',
      'Tanked blows from the Mindless Ones, keep in mind this was when Strange which significantly exhausted in shields and magical power. '
          'Even the Hulk wasn\'t able to hurt the Mindless Ones.',
    ];

    //skillList
    var skillList = <String>[
      'Has been on many superhero teams including: Illuminati, Avengers of the Supernatural, and the Defenders',
      'Has been dubbed the Sorcerer Supreme and defended his title 3 times',
      'Performed cosmic surgery on Eternity',
      'Temporarily held off and matched the power of Adam Warlock, who wielding the Infinity Gauntlet, when using all of his equipment at once.',
      'Consistently beats the likes of Baron Mordo, Dormammu and Shuma-Gorath.',
      'Defeated the Master of the Dream Dimension - Nightmare',
      'Defeated the King of Vampires, Dracula',
      'Impresses the Living Tribunal with his skill and power.',
      'Successfully performed cosmic surgery on Eternity.',
      'Defeated Agamotto, one of his main patrons.',
      'Fought and defeated the In-Betweener.',
      'Effortlessly defeated blood-lusted clones of Spider-Man, Namor, Black Panther, Hulk and Black Bolt at the same time.',
      'Defeated MoonDragon, wielder of the Telepathy Gem, in a telepathic combat.',
      'Defeated his old master, the Ancient One',
      'Death stated that it’s too much of a hassle to kill Strange',
      'Fought in a five thousand year war.',
      'Defeated In-Betweener.',
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
    ];

    return list;
  }
}

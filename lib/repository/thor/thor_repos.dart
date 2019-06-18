import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/character_repos/character_repos.dart';

class ThorRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Born as the half-Asgardian, half-Elder God son of Odin, the All-Father and King of Asgard, and as the Norse God of Thunder, Thor was an adventurous yet '
        'ill-tempered deity, often travelling to other realms to do battle with Asgard’s foes. He spent much of his time in Midgard in particular, or our Earth, '
        'fighting as the mythic Germanic hero Siegfried and battling the ancient mutant, Apocalypse. As he became more arrogant, it became apparent to Odin that '
        'his son needed to learn the value of humility. To do so, he stripped Thor of his powers and memories, rendering him human and stranding him on Earth.'
        '\n\nUnder the guise of Dr. Donald Blake, Thor grew to care for his fellow man, and eventually regained his old identity with Odin’s blessing. To this end, '
        'he opted to split his time between Asgard and Midgard, and helped found the Avengers, dedicating himself to the protection of Earth alongside the likes '
        'of Captain America, Iron Man, the Hulk, Ant-Man, the Wasp, Spider-Man and many other heroes, while upholding his responsibilities as a prince.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = indexing(<Information>[
      Information(
          title: 'Asgardian Physiology',
          description:
              'Due to his parentage, Thor is naturally bestowed with various powers'),
      Information(
        title: 'Godly Physique',
      ),
      Information(
          title: 'Master Combatant',
          description:
              'Having hundreds of years of combat experience under his belt, he is one of the more skilled fighters in the Marvel universe. He is Asgard\'s '
              'finest warrior and has learned numerous combat styles both from Asgard and from Earth. His skills are on par with some of the best martial artists '
              'in Marvel such as Iron Fist and Captain America. He is not only extremely proficient in hand-to-hand combat but he is also an expert in both sword '
              'and hammer combat. His preferred method of fighting outside of using his hammer is likely Glima, a Viking wrestling style that uses quick throws, '
              'chokes and locks. He has been shown wrestling both the Hulk and Hercules.'),
      Information(
          title: 'Flight',
          description:
              'Contrary to popular belief, Thor is capable of flying without his hammer.'),
      Information(
          title: 'Longevity',
          description:
              'Even though Thor isn\'t immortal, his aging cycle is still slowed down to the point where he appears so. He has lived for thousands of years and is '
              'still only in his physical prime.'),
      Information(
          title: 'Incredible Healing Factor',
          description:
              'Thor is able heal faster than any average human beings on Earth. He was once able to regenerate both of his broken fists and regenerate his liver when it was vitrified.'),
      Information(
          title: 'Godlike Senses',
          description:
              'Thor is able to track objects travelling faster than light speeds, and hear cries of help from the other side of a planet.'),
      Information(
          title: 'Super Breath',
          description:
              'Thor is able to hurricane force winds with just his breath alone.'),
      Information(
          title: 'Earth Manipulation',
          description:
              'Due to having Gaea as his mother, Thor is able to manipulate the ground he stands on, capable of shaking the earth to create anything from a minor landslide to a continent-wide earthquake.'),
      Information(
          title: 'Memory Alteration',
          description:
              'Stated to be known as "Gift of Forgetfulness" from Thor, he is able to change one\'s memory and could potentially control ones mind.'),
      Information(
          title: 'Dimensional Travel',
          description:
              'Thor can travel through space, different dimensions, and other worlds, including creating portals. He once created a portal to the Sun and determined the boundaries of the Tesseract (the pocket dimension Thor was prisoned in).'),
      Information(
          title: 'Omnilingual',
          description:
              'Whenever Thor speaks, anyone who hears him will speak their native language.'),
      Information(
          title: 'Mental Influence Resistance',
          description:
              'Thor has shown to have resisted mental influences from foes. He managed to resist a mind blast from a Super-Beast.'),
      Information(
          title: 'Incredible Intellect',
          description:
              'Thor not only a strong brawler, he is also incredibly smart. He is shown to be an excellent strategies and knowledge of different type of magic.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          title: 'Linked to Mjolnir',
          description:
              'Most of Thor\'s powers are actually because of Mjolnir and not Thor himself. Therefor, if he looses Mjolnir, or if the hammer finds someone'
              ' more worthy of it\'s power than him, Thor is left powerless aside from his superhuman physique.'),
      Information(
          title: 'Arrogance',
          description:
              'Although Thor’s time on Earth has humbled him, shades of his old arrogant self still remain. He is likely to hold back against foes he '
              'perceives to be weaker than himself, to prevent unnecessary collateral damage or to act as a self-imposed challenge, at least at first.'),
      Information(
          title: 'Loss of Belt',
          description:
              'Even when operating at near-peak condition, stripping away his belt will partially rob him of his access to the Odin Force'),
      Information(
          title: 'Warrior\'s Madness',
          description:
              'While entering the Warrior’s Madness greatly increases his power, it will also turn him into a mindless berserker.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var mjolnirList = indexing(<Information>[
      Information(description: 'Weather Manipulation'),
      Information(description: 'Energy Manipulation'),
      Information(description: 'Barriers'),
      Information(description: 'Dead Summoning'),
      Information(description: 'Invisibily & Intangibility'),
      Information(description: 'Lightning Bestowal'),
      Information(description: 'Thermal Explosion'),
      Information(description: 'Anti-Force'),
      Information(description: 'God Blast'),
    ]);
    var list = indexing(<Information>[
      Information(
          title: 'Mjolnir',
          description:
              'A hammer forged in the core of a dying star that is magically bound to Thor, and the source of most of his powers. Only Thor can truly wield the '
              'powers of Mjolnir, though it is possible for him to lose worthiness with it given to someone else. Some characters are strong enough to pick up Mjolnir,'
              ' but often aren\'t worthy to properly wield it. The hammer is extremely strong, able to level mountains with casual ease and create small cracks in the '
              'armour of a Celestial, which are durable enough to withstand planet shattering impacts.',
          subInformation: mjolnirList),
      Information(
          title: 'Megingjord',
          description:
              'An enchanted belt that doubles Thor\'s strength and stamina.'),
      Information(
          title: 'Jarnbjorn',
          description:
              'a battle axe forged by dwarves, it is sharper and more durable than most earthly weapons and was enchanted by Thor himself to be able to penetrate '
              'celestial armor and technologies.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getAlternateForms() {
    var list = indexing(<Information>[
      Information(
          title: 'Warrior\'s Madness',
          description:
              'In the heat of battle, Thor can succumb to the Warrior’s Madness, a state in which he gives in to his most basic and primal instincts of '
              'battle. Known as the Sin Unpardonable due to its usage being outlawed by Odin, his strength and stamina are increased tenfold at the cost of'
              ' whatever rationality he once possessed, turning him into a raging beast not unlike Wolverine’s Berserker Rage or World Breaker Hulk. Under its effects,'
              ' Thor has beaten the likes of Beta Ray Bill, the Silver Surfer, Thanos and members of the Infinity Watch armed with their respective Infinity Gems '
              'such as Drax the Destroyer, Adam Warlock and Moondragon. It is worth noting that Thor, as with all Asgardians, can still access this even after '
              'being labeled unworthy by Mjolnir.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Stated by Adam Warlock to be physically the strongest of the universe.',
      'Casually snapped an adamanitum alloy cables by just flexing.',
      'Stalemated the Hulk.',
      'Knocked down Mangog, a being who is resistant to blunt forces.',
      'Destroyed an arch weighing over a million tons.',
      'Clashed with Gorr, which shattered an entire planet.',
      'Pushed over the leaning Tower of Pisca with just his fingers.',
      'Knocked out Namor with a single blow, despite being fully hydrated by a rainstorm.',
      'Launched Harald Jaekelsson into orbit with a single uppercut.',
      'Can create thunders that can be heard from other planets.',
      'His punches has levelled a countryside and closed a dimensional drift.',
      'Effortlessly threw a piece of the star core at the God Bomb.',
      'Destroyed Silver Surfer\'s force fields, which are tough enough to withstand a barrage of nuclear bombs.',
      'Beat up Silver Surfer after the latter stopped holding back.',
      'Held together the fissures of a badly damaged moon, and fixed it with his lightning.',
      'Fought with Red Norvell, which shook all off Asgard.',
      'Lifted the Midgard Serpent, a snake large enough to coil around Earth and crush it in its grip.',
      'Wrestled the World Serpent, Jormungandr, off Earth.',
      'Holds up the George Washington Bridge long enough for Damage Control to fix it while heavily injured.',
      'Crumbled Uru to dust.',
      'Destroyed an earth-threatening comet.',
      'Accidently formed a black hole with his fists.',
      'Knocked out the Pheonix Force.',
      'Resisted the gravity of a neutron star.',
      'Reversed the World Engine.',
      'Managed to Odin, a skyfather level being.',
      'Almost killed the Hulk with a single strike.',
      'Destroyed Demorgore\'s heart, who is twenty times the size of planets and stars.',
      'Fought Superman. Although he lost the duel he managed to put up a great fight.',
      'Mjolnir’s strikes can dent Celestial armor.',
      'Can one shot Namor and the Abomination.',
      'Strong enough to tear the ground open with just his hands.',
      'Hit Beta Ray Bill so hard that the ground underneath him completely shattered.',
      'Mjolnir is strong enough to knock the extremely powerful Galactus over.',
      'Destroyed a helicopter while depowered.',
    ];

    //speedList
    var speedList = <String>[
      'Thor’s speed has been directly stated to be faster than light.',
      'Can create tornadoes by just twirling his cape.',
      'Flew to the sun in a matter of seconds.',
      'Can swing his hammer twice at the speed of light.',
      'Able to throw his hammer at light speed.',
      'Saved Red Hulk from a black hole.',
      'Was able to land a hit on Quicksilver, who regularly moves at hypersonic speeds, and stated that he fought faster foes than him.',
      'Stated that he was fast as the lightning commands.',
      'Capable of hyperspace travel.',
      'Can fly through galaxies with ease.',
      'Was able to sawing his hammer at lightspeeds when his strength was reduced in half.',
      'Has been established that the speed of his hammer transcends both time and space.',
      'Reacts to cosmic blasts from the Silver Surfer and catch guys like him off-guard.',
      'Has caught up to Hermes, the literal Greek God of Speed.',
      'His reflexes allow him to catch shells (Mach 1.3 speeds), darts, and weapons out of the air.',
      'Can strike and move in microseconds.',
      'Adam Warlock says he moves as quick as lightning.',
      'Can easily react to and deflect lasers.',
      'Mjolnir is faster than Silver Surfer.',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Is completely bullet-proof.',
      'Tanked a direct hit from Starbrand, who is strong enough to damage Captain America and Iron Man in the process.',
      'Tanked anti-matter blasts from an upgraded Electro.',
      'Only flinched when Rogue punched him, which would shatter diamonds.',
      'Survived being crushed by the gravitational power of a neutron star and being buried under a pile of debris.',
      'Tanked a supernova.',
      'Was the only one consciouse when clashed with four other Mjolnir at full force.',
      'Took a blast from Thanos, which blasted open a planet.',
      'Tanked a holocaust bomb.',
      'Young Thor endured torture from Gorr for seventeen days.',
      'Withstood an attack on what he thought be the source of all planets.',
      'Withstood blows from Skurge\'s Axe when his power was reduced to half.',
      'Able to survive absolute zero temperatures.',
      'Can endure heat from the heart of stars.',
      'Took Ghost Rider\'s hellfire blast.',
      'Survived blows from the Celestials.',
      'Got punched in the face by Wonder Man and was fine.',
      'Took punches from a Power Gem-enhanced Drax.',
      'Tanked a blow from Surtur, who is one of the most powerful demons in the Marvel universe.',
      'Wolverine’s claws barely even leave a scratch.',
      'Tanked Zeus\' lightning bolt.',
      'Survived a scream from Black Bolt',
      'Has tanked blows from the Hulk numerous times',
    ];

    //skillList
    var skillList = <String>[
      'Summoned cosmic weather without Mjolnir.',
      'Can channel lightning through the ground.',
      'has matched Captain American in a pure boxing match.',
      'Was once able to cause a canyon so large that it spanned an entire country.',
      'Founding members of the Avengers',
      'One of the strongest heroes in the Marvel Universe',
      'Thor\'s weapon pretty much ignored all of Newton’s laws of physics.',
      'Took on the likes of Thanos, Galactus and Silver Surfer',
      'Defeated Juggernaut, Silver Surfer, & Iron Man.',
      'Defeated the Midgard Serpent, the Earth coiling snake Jormungand.',
      'Is one of the most powerful Avengers (debatably the most powerful - often called in to fight foes others cannot)',
      'Has fought the Hulk numerous times and won',
      'Has consistently fought in and won large scale battles, such as the time he fought off Mephisto’s army of demons',
      'Defeated a bear without any of his powers',
      'Has thousands of years of experience.',
      'KO\'d the Phoenix Force',
    ];
    //mentalityList
    var mentalityList = <String>[
      'Has one is the most powerful souls in the Marvel universe',
      'Feels no fear',
      'Possesses an extremely high IQ due to his time as Donald Blake',
      'Can resist illusions to the strength of his mind',
      'He can also resist telepathic attacks. His most impressive feat regarding this is resisting Moondragon, who had a mind gem during this time.',
    ];

    var list = indexing(<FeatsInfo>[
      FeatsInfo(title: 'Strength', descs: strengthList),
      FeatsInfo(title: 'Speed', descs: speedList),
      FeatsInfo(title: 'Durability', descs: durabilityList),
      FeatsInfo(title: 'Skill', descs: skillList),
      FeatsInfo(title: 'Mentality', descs: mentalityList),
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

import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/character_repos/character_repos.dart';

class TheHulkRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Bruce Banner was born to Dr. Brian Banner and his wife Rebecca. Brian was an alcoholic father whose jealousy grew for Bruce as Rebecca shifted her '
        'focus from Brian to Bruce,Further, Brian believed that his radiation work had altered his DNA and given him a mutant son. Brian then abused Bruce and '
        'finally murdered Rebecca, then was placed in a mental hospital. After that, Bruce was raised by his aunt and father\'s sister, Susan Banner, '
        'who understood his great pain and rage over his childhood sufferings thanks to his crazed father, and raised him with love and care as if he were her own child.'
        '\n\nEventually when he became an adult he was a genius in nuclear physics, but without the proper funding, he was forced to go to the Desert State University. '
        'While performing a Gamma Bomb test until he saw a random civilian, so he asked his assistant Igor to stop the bomb, however because Igor was with the '
        'Soviet Union, he refused. Bruce was able to find a place to protect the bystander however he wasn\'t able to get back to his former location when the Gamma Bomb went off.'
        '\n\nSomehow, Bruce survived the explosion thanks to a genetic factor in his body. This factor allowed Bruce to absorb the gamma radiation and after that night, '
        'he would frequently transform into the Green Goliath, also known as the Hulk.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = indexing(<Information>[
      Information(
          title: 'Thunder Clap',
          description:
              'Hulk\'s most iconic move and the one he uses the most often. Basically, Hulk uses his sheer strength, smashing his two hands '
              'together to create a shockwave. Hulk’s Thunder Clap has been compared to a hurricane going off and many people have compared it to a '
              'nuclear bomb when Hulk is powered up with rage. It is certainly strong enough to knock away the Avengers. including Iron Man, and almost brought down the Wolverine.'),
      Information(
          title: 'Impact Punch',
          description:
              'A stronger version of the Hulk Punch, this sends foes flying (like Thor) and in the Marvel vs Capcom fighting games it can be used as a wall bounce.'),
      Information(
          title: 'Immense Durability',
          description:
              'Hulk can take virtually anything that comes his way, and has taken hits that can level planets before and kept fighting.'),
      Information(
          title: 'Gamma Ray Generation',
          description:
              'Bruce\'s power comes from the gamma rays he emits as the Hulk. As such, he radiates it outwards on a regular basis as the Hulk.'),
      Information(
          title: 'Gamma Energy Absorption',
          description:
              'Banner, due to being infused with gamma rays, is able to use manipulate gamma energy - he can use gamma energy to increase his own strength '
              '(such as the earthquake feat). If he is hit by gamma bombs then he can absorb it and increase his strength to insane levels - as not only did he '
              'gain a massive amount of strength but he grew 80 feet tall when this happened. When angered, he can use the gamma energy within himself to create '
              'large shockwaves capable of taking down dragons. Hulk has also been shown to be able to absorb normal energy to increase his attack strength and size.'),
      Information(
          title: 'Regeneration',
          description:
              'If the Hulk ever gets damaged he can regenerate from the damage, thanks to his Gamma Radiation, his Healing Factor also allows '
              'him to be immune to any Earthly diseases, and practically makes him immortal. His regeneration is so strong, that he can heal from most of '
              'his muscles and all of his skin being vaporized in seconds.'),
      Information(
          title: 'Rage Factor',
          description:
              'Perhaps the Hulk\'s most famous ability, his strength, durability, speed of his healing factor, and the amount of gamma rays he produces '
              'all increase the angrier he becomes, with no limit whatsoever.'),
      Information(
          title: 'Psychic Resistance',
          description:
              'As the Hulk, Bruce can resist mind control up to a certain extent.'),
      Information(
          title: 'Astral Sight/Ghost Seeing',
          description:
              'Hulk has the ability to see \"astral forms\" aka ghosts. Nearly no one can see Doctor Strange’s astral form expect for him. He is able to see '
              'a ghost town before it faded away in the desert. Hulk is also able to interact with ghosts and astral forms such as the time he broke Doctor Strange\'s '
              'hands during the World War Hulk storyline while DS was in Astral Form. It has never been stated where the Hulk got this ability, though it may be due to '
              'Banner\'s fear of his father\'s ghost coming back and terrorizing him (this has never been confirmed in canon).'),
      Information(
          title: 'Adaptability',
          description:
              'Whenever his environment changes drastically, the Hulk\'s body can adapt its structure to acclimate to his new surroundings.'
              ' For example, Hulk normally breathes oxygen. However, he can adapt away the need to breathe when sent into space.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var teamworkList = indexing(<Information>[
      Information(description: 'Rage Cap'),
    ]);
    var list = indexing(<Information>[
      Information(
          title: 'Teamwork',
          description:
              'Bruce and Hulk don\'t seem to work together well, as Bruce fears Hulk\'s power and Hulk is scared of Bruce\'s intellect.',
          subInformation: teamworkList),
      Information(
          title: 'Gamma Absorbtion',
          description:
              'As his power comes from the gamma rays he produces, draining it from Hulk weakens him drastically.'),
      Information(
          title: 'Rage Dependence',
          description:
              'Since Hulk\'s strength is directly tied to his rage, calming him down will weaken him or even revert him back to Banner.'),
      Information(
          title: 'Intellect',
          description:
              'While Hulk is smarter than some people think, he is still slightly less than average in intellect and can\'t act on his cunning well unless he\'s in an alternate form.'),
      Information(
          title: 'Overusing the Hammer of Nul',
          description:
              'Using the Hammer of Nul for too long may make him go into an unstoppable rampage'),
      Information(title: 'Puppies'),
      Information(
          title: 'Materials',
          description:
              'Hulk\'s skin can be harmed by materials such as Adamantium and Vibranium. The Hulk can also be knocked out with gas,'
              ' and is susceptible to mental attacks, though he usually breaks through them with his sheer will power.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getFunFacts() {
    var list = <Information>[
      Information(
          description:
              'Bruce and Hulk are based off of Dr. Jekyll and Mr. Hyde'),
      Information(
          description:
              'Hulk was originally supposed to be gray, but he instead was green because of inking problems.'),
    ];
    for (Information item in list) {
      item.id = list.indexOf(item);
    }
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var list = indexing(<Information>[
      Information(
          title: 'Hammer of Nul',
          description:
              'When Hulk picks up this hammer, he becomes Nul: Breaker of Worlds, the Hammer can fire a huge burst of electricity, Gives Hulk the ability to '
              'fly, and if used long enough, he can transform into the True form of Nul, however he prefers to avoid this form'),
      Information(
          title: 'Old Taser',
          description:
              'Somehow can be measured on the Richter Scale, on 1.4 it was able to send Logan flying across a street, According to banner a 6.9 would be able to kill him'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getAlternateForms() {
    var giantManList = <Information>[
      Information(description: 'Enhanced Strength'),
      Information(description: 'Enhanced Durability'),
    ];

    var list = indexing(<Information>[
      Information(
          title: 'Gray Hulk',
          description:
              'There are two Hulks that live inside of Bruce Banner, they are Savage Hulk and Gray Hulk. Savage Hulk is the dominant personality, however'
              ' if Gray Hulk becomes more dominant, whenever Bruce become mad he instead becomes Gray Hulk (however now Bruce can willingly become '
              'Gray Hulk), also known as Joe Fixit. Gray Hulk is far more cunning and arrogant than Savage Hulk but his growth in power takes a far'
              ' longer time than Savage Hulk.',
          subInformation: giantManList),
      Information(
          title: 'Green Scar Hulk',
          description:
              'When forced to fight as a gladiator in the the arenas of Sakaar, Bruce and Hulk both realized they were in serious danger on this world, '
              'and could only survive by working together. Their collaboration created Green Scar, who is far stronger than Savage Hulk and more cunning than '
              'Gray Hulk, thanks to meditation to where his mind and anger are at their most concentrated due to their collaboration. He was able to shrug off '
              'attacks that other incarnations could not endure, and has also become adept in several weapons like greatswords and shields. Unfortunately, while '
              'being his strongest form, it is also one of his rarest one because Bruce fears Green Scar\'s terrible power.'),
      Information(
          title: 'Worldbreaker Hulk',
          description:
              'When his rage is pushed past any anger he has ever felt, Green Scar Hulk is elligible of entering the Worldbreaker state. In this form '
              'of supreme power, Green Scar retains his intellect and skill in combat while also drastically enhancing his strength to ungodly levels. '
              'The gamma rays he emits alone devastate an entire city, and his footsteps shake continents. It takes a serious threat to push Hulk this far, '
              'however, and this form has only been used on a few occasions.'),
      Information(
          title: 'Doc Green',
          description:
              'When Bruce Banner used the Extremis virus to free his mind of his Dissociative Identity Disorder, his mind merged and could control the '
              'Hulk\'s body. Essentially, this gave Hulk the strength of himself but the intellect of Bruce, making Doc Green the smartest incarnation '
              'of any Hulk. However, he no longer has access to this form after Secret Wars, and would only be able to use it if something fixed his mind in '
              'the midst of a fight.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Lifted an entire castle, then destroyed it.',
      'As World Breaker Hulk, destroyed the East side of Las Vegas just by being angry.',
      'Picked up train tracks with a train on them, twice.',
      'Lifted a 150 billion ton mountain range.',
      'Along with Red She-Hulk, destroyed an entire planet.',
      'Pulled together the tectonic plates of Sakaar.',
      'Destroyed Onslaught\'s physical armor with a single punch.',
      'Nearly sank the East Coast of North America with a single step.',
      'Wolverine explains that Hulk is basically a walking earthquake',
      'Was able to hold together a planet that was cracked in half as Worldbreaker Hulk.',
      'Breaks out of Plasti-thene, a material that not even Thor\'s hammer would smash it.',
      'Tears off Ultron\'s arm.',
      'Easily tears and breaks through a nuke-proof door.',
      'Cracked a statue of pure adamantium.',
      'Can snap a train track like a towel.',
      'Can easily toss a 20-ton Fin Fang Foom to the moon.',
      'Can punch hard enough that the heat lights up the cosmos.',
      'Can hammer a continent into the ground.',
      'Pulled two continental plates together.',
      'Punches through a time barrier during a battle against Zarrko.',
      'Managed to hold up the weight of a star on his and knees and eventually got back to his knees.',
      'Can clap like a nuke.',
      'Managed to draw blood from Hyperion, who survived universal collison.',
      'Gave Thor a bloody nose with a fist.',
      'Claps hard enough to take down Dormammu.',
      'Has broken a Jupiter-sized planet with his punches as Worldbreaker.',
      'Nearly shook a North America apart with only a few steps as Worldbreaker.',
      'Is capable of breaking asteroids twice the size of Earth with his claps.',
      'Can jump into orbit.',
      'Held up the entire island of North America and still had enough energy to beat the s**t out of Attuma.',
      'Casually overpowers Hyperion with one arm.',
      'Not even the Leader can measure the Hulk\'s strength.',
      'Created earthquakes with his footsteps.',
      'Strong enough to stop an earthquake.',
      'His claps are often compared to a hurricane and a sonic boom II.',
      'Capable of pushing apart of two spheres made out of matter and anti-matter.',
      'Ripped apart an enormous device designed to fight against the Celestials.',
      'Got Juggernaut to his knees with just two blows.',
      'Lifted the entire pillar of the Sacred Flame.',
      'Threw someone to outer space.',
      'Hulk has been encased in pure diamond and completely shattered it simply by posing menacingly',
      'Literally punched through a time storm',
    ];

    //speedList
    var speedList = <String>[
      'The Hulk can go to speeds up to 400 miles per hour.',
      'Hit a demon-possessed Quicksilver (Who could move beyond the speed of light).',
      'Was able to tag the Silver Surfer while in a fight.',
      'Was able to catch up with Spider-Man.',
      'Punches out a beam from a tank.',
      'Grabs a missile out of the air.',
      'Blitzed Thor, Captain America, and Iron Man.',
      'Can swat an artillery shell out of the air.',
      'Was shot point blank in the face and caught the bullet with his teeth.',
      'Easily blitz a supersonic gunmen.',
      'Evaded a point-blank ambush from Wolverine.',
      'Dodged Doctor Doom\'s beam.',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Tanked hits from Thor, Wolverine, and the Hulkbuster armor.',
      'Kept on fighting Vector even after being turned into a walking skeleton.',
      'Tanked hits from Hyperion and Galactus\' lasers.',
      'Not at the same time. Two seperate laser feats.',
      'Adamantium crushing teeth done nothing to Hulk.',
      'Hawkeye\'s arrow can\'t pierce his eyes.',
      'Has resistance to shrink-rays.',
      'Can swim for days on end.',
      'Fights in hell for days on end.',
      'Withstood a Gamma-Bomb Blast.',
      'Survives an atmospheric re-entry back to Earth.',
      'Survives 50,000 volts of electricity.',
      'Withstand being near the Human Torch going supernova.',
      'Can take Hyperion\'s laser vision.',
      'Can shrug off Ghost Rider\'s hellfire.',
      'Can easily walk through lava without any problem.',
      'Can resist a raodiactive aura that has the heat of a miniature sun.',
      'Can take lightning to the head by Thor.',
      'Tanked gravity two billion times stronger than the gravity of Earth.',
      'Took hits from the Juggernuat.',
      'Is tough for Wolverine to cut as Green Scar, who was able to stab Thanos while wearing the Infinity Gauntlet.',
      'Regenerated half his body in 18 minutes.',
      'Withstood Fin Fang Foom\'s fire breath',
      'Survived a nuke specifically designed to kill him',
      'Tanked a blast from the World Killing Galactus.',
      'Shrugged off hits from the Celestial Order as Savage Hulk',
      'Survived Human Torch\'s Nova Blast, which is 1,000,000 degrees Fahrenheit. The sun is only 9,000 degrees Fahrenheit.',
    ];

    //skillList
    var skillList = <String>[
      'Has used the Juggernauts own momentum against him.',
      'As Green Scar, fought Sentry to a standstill.',
      'Commonly known as \"the strongest there is.\"',
      'Has bested the Hulkbuster, which was specifically built to subdue him, more times than not.',
      'Nearly soloed the Avengers as Green Scar, albeit one by one.',
      'Defeated the immortal Hercules.',
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

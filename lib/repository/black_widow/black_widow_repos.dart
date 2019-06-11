import 'package:avenger_information/models/character_detail_category.dart';
import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';
import 'package:avenger_information/repository/base/character_repos/character_repos.dart';

class BlackWidowRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'The many accounts that detail the childhood of Natalia Alianovna Romanova are as varied as the lies she fabricated and the lives she has taken over the '
        'course of her career as one of the deadliest assassins in a post-Cold War age. Some say that she was left alone after a house fire claimed the lives of'
        ' her parents, and grew up to become a celebrated ballerina. Others paint a grimmer picture, where these supposedly peaceful memories were artificially '
        'created while she was raised in the Red Room, a facility that groomed orphan girls into assassins for the Russian government. Regardless of her true origins, '
        'young Natalia\'s immense physical prowess soon led to her becoming an agent for the KGB, and its most feared to boot: the Black Widow.'
        '\n\nFor as long as she could remember, Black Widow faithfully served her superiors to the letter, whether it involved eliminating enemies of the state or gathering '
        'crucial intelligence from the most dangerous of locales. However, she began to have second thoughts about where her loyalties truly lay when she was tasked with '
        'infiltrating Stark Industries in the United States. In her repeated attempts to sabotage it, the Widow teamed up with Hawkeye, a vigilante archer who she later began '
        'developing feelings for. When it became clearer that she was seriously considering a defection, the KGB ordered her assassination, leading to both '
        'of them seeking refuge by becoming members of the US\' premier superhero team: the Avengers.'
        '\n\nUltimately, Black Widow chose to not follow through after receiving an offer from a secret intelligence agency named S.H.I.E.L.D.; '
        'its enigmatic director Nick Fury had monitored her performance within the KGB for several years and saw in her an asset that his organization could '
        'use in safeguarding the world from any threats. The newly renamed Natasha Romanoff agreed when it became clear that S.H.I.E.L.D. would wipe her slate '
        'in her past life clean, and since then, she has juggled her role as a freelance spy for them along with being a part-time ally of the Avengers. She is '
        'currently deceased in the mainline Marvel canon after having sacrificed herself to save Miles Morales, although a '
        'clone of her has continued to uphold her duties since.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = indexing(<Information>[
      Information(
          title: 'Red Room Enhancements\'',
          description:
              'As part of her training, Black Widow was biochemically enhanced with the Red Room\'s variant of the same Super Soldier Serum responsible for transforming '
              'Steve Rogers into Captain America. While it may not be as potent as Dr. Erskine’s original formula, it still allows her to at least match the physical '
              'prowess of comparable figures such as the aforementioned Captain, the Punisher, Daredevil and her former mentor: the Winter Soldier. For the most part, '
              'this means that Black Widow is simply several leagues stronger, faster, and tougher than the average person. She can lift up to 500 pounds, '
              'jump up 10 meters without a running start, survive falls from several stories, dodge gunfire from either long distances or point-blank range, '
              'and heal from injuries in a fraction of the time it takes normally. The serum is also notably the reason why she retains a very youthful appearance. '
              'While comic book time does sort of muddy up her true age, much of Black Widow’s backstory with the KGB at least gives the implication that she could '
              'have been around for more than six decades while still looking like a 30-year old woman in the modern continuity. These are by far the closest she has '
              'to any notable superpowers, as by and large she is relatively human otherwise'),
      Information(
          title: 'KGB Training',
          description:
              'Since childhood, Natasha was groomed to be one of the KGB’s Black Widows, an all-female group of elite spies and assassin whose efficiency'
              ' on the job made them on par, if not better than many black ops units. A large part of that was due to their training, making each Widow master '
              'multiple disciplines that their profession demanded from them. For starters, Black Widow has earned expert-level proficiency in various martial arts, '
              'such as Karate, Sambo, Judo, Muay Thai and Ninjutsu, among others. She is also a master marksman on par with her best friend Hawkeye, '
              'capable of wielding any ranged weapon as excellently as she can in any situation possible. This extends to the use of any melee weapons she can get '
              'her hands on, even for those she improvises on the spot. As a spy, she has honed her stealth capabilities to a tee, allowing her to remain undetected '
              'if need be. Even when caught and with no opportunities to fight her way out, Natasha’s training with the Red Room has made her an unparalleled manipulator '
              'of others; whether she chooses to seduce her targets, play to their emotions or even put herself in an assumed moment of weakness, she can easily turn '
              'the tables on her enemies if they show any emotional or logical vulnerabilities that can be exploited.'),
    ]);
    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getFunFacts() {
    var list = indexing(<Information>[
      Information(
          description:
              'Hank has had six different superhero identities over the years.'),
      Information(
          description:
              'He is considered the Marvel Comics counterpart of DC Comics the Atom.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var gauntletsList = indexing(<Information>[
      Information(description: 'Widow\'s Line'),
      Information(description: 'Widow\'s Bite'),
      Information(description: 'Widow\'s Kiss'),
    ]);

    var gunsList = indexing(<Information>[
      Information(description: 'Makarov PM'),
      Information(description: 'Walther PPK/S'),
      Information(description: 'Heckler & Koch USP Compact'),
      Information(description: 'Glock 26'),
      Information(description: 'Glock 19'),
      Information(description: 'Uzi'),
      Information(description: 'SV-98 Sniper Rifle'),
      Information(description: 'Glock 17'),
      Information(description: 'Colt M4A1 with a M203 Grenade Launcher'),
    ]);

    var bombsList = indexing(<Information>[
      Information(description: 'Bombs'),
      Information(description: 'Grenades'),
      Information(description: 'Flash Bombs'),
      Information(description: 'Smoke Bombs'),
      Information(description: 'Micro-Bombs'),
      Information(description: 'Adhesive Bombs'),
    ]);

    var discsList = indexing(<Information>[
      Information(description: 'Taser Discs'),
      Information(description: 'Explosive Discs'),
    ]);

    var list = indexing(<Information>[
      Information(
          title: 'Spy Suit',
          description:
              'Black Widow has had various spy suits throughout her career, but most of them share common traits. Said suits are made from a synthetic and flexible '
              'fabric which has been augmented to be highly resistant to things that would normally kill a person, such as bullets, bladed weapons and extreme '
              'temperatures. It has claws that allow her to scale walls and cling to ceilings. She also has a White Suit that allows her to make her invisible '
              'to cameras, as well as using oil to blind others. Her Glider Suit allows her to glide in the air, as well as having a parachute. Her spy suit also has '
              'armored gloves which are strong enough to bend steel. She also tends to carry around goggles, which can figure out where a person is going as well as see '
              'in infrared.'),
      Information(
          title: 'Gauntlets',
          description:
              'Gauntlets worn around both of Black Widow\'s wrists. They were originally just normal bracelets, but after deciding to fight for the Avengers and '
              'S.H.I.E.L.D., she was inspired by Spider-Man to put his and her own abilities into them. After being upgraded, they contain all sorts of equipment and abilities.',
          subInformation: gauntletsList),
      Information(
          title: 'Guns',
          description:
              'Given her profession, Natasha was trained to be proficient in handling any firearm she came across upon. While she doesn’t have a set default '
              'loadout to carry on any assignment, she does have a few guns of note throughout her history as an active operative.',
          subInformation: gunsList),
      Information(
          title: 'Bombs',
          description:
              'There are many types of explosives stored in Black Widow’s gauntlets, which include',
          subInformation: bombsList),
      Information(
          title: 'Discs',
          description:
              'Black Widow has discs that she can fire out of her gauntlets. Usually, she uses two different types of discs',
          subInformation: discsList),
      Information(
          title: 'Batons',
          description:
              'These batons are uses to batter enemies, and are able to be charged with the same electricity as Black Widow\'s gauntlets. These batons are used more for '
              'incapacitation rather than killing, though it can be used to finish opponents off as shown when she used them to take down dozens of Ultron Sentries. '
              'They also have a secondary feature, in that they are able to be combined together to make a staff weapon, which she used against the Black Order.'
              'Black Widow has discs that she can fire out of her gauntlets. Usually, she uses two different types of discs'),
      Information(
          title: 'Radio Transmitter',
          description:
              'In her gauntlets she keeps a radio transmitter that allows her to see where a person is heading. This can be used to get the jump on her enemies.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Broke a man\'s neck with one kick',
      'Kicked the Punisher through a carnival game',
      'Shattered a bunch of wooden boards',
      'Sent a man flying with one hand',
      'Hurt Spider-Man with a kick',
      'Sent a man flying with one punch',
      'Slammed a man into the ground so hard that he cracked the concrete',
      'Once lifted & wielded Mjolnir',
    ];

    //speedList
    var speedList = <String>[
      'Has shown bullet timing',
      'Has managed to evade automatic gunfire',
      'Evaded a shot from the Punisher',
      'Evaded a point blank laser',
      'Has evaded lasers',
      'Dodged fire from a well known game hunter and assassin',
      'Has evaded gattling gun fire',
      'Has dodged a blast from Iron Man',
      'Dodged projectiles from Bullseye, and keep in mind that Bullseye never misses',
      'Dodged blasts from Electro, who has massively hypersonic attack speed',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Fell out of a building and survived',
      'Survived a grenade explosion',
      'Took a hit from the Scorpion who has managed to defeat Spider-Man on some occasions',
      'Survived a brutal beating from a Russian super spy',
      'Took a hit from an A.I.M. robot, who have managed to hurt the likes of Spider-Man and get right back up',
      'Stood perfectly still during a major surgery despite having no anesthesia',
      'Survived a blast from Doctor Doom (though she was knocked out by it)',
      'Got hit in the stomach by Cap’s shield thrown by Daredevil and got up fine',
      'Survived a helicopter explosion',
      'Took a beating from an android who is strong enough to lift cars',
    ];

    //skillList
    var skillList = <String>[
      'Assisted in Nick Fury’s Secret War to overthrow Lucia von Bardas as dictator of Latveria',
      'Temporarily led S.H.I.E.L.D. after the Civil War event',
      'Fought against Wolverine as a child',
      'Defeated 100 men',
      'Has defeated the Punisher, who is one of the deadliest street level Marvel heroes',
      'Defeated the highly trained mercenary Crossbones',
      'Able to match the Winter Soldier',
      'Has stalemated one of the deadliest assassins in the Marvel universe: Elektra',
      'Defeated Lady Bullseye, who previously has defeated Daredevil',
      'Defeated El Jaguar, who was able to fight evenly with Daredevil',
      'Nearly killed Nick Fury and murdered her way through multiple S.H.I.E.L.D. agents with ease',
      'Took down an entire warehouse full of armed drug dealers',
      'Able to match a bloodlusted and brainwashed Hawkeye',
      'Defeated a brainwashed Captain America with help from Diamondback',
      'Matched the Red Skull, who was in Captain Amercia’s body at the time (though she didn\'t win)',
      'Defeated Yelena Belova, one of her successors as the KGB-endorsed Black Widow',
      'Often regarded as one of the top graduates of the KGB’s Red Room program',
      'Represented the Avengers in their battles against the X-Men',
      'Infiltrated Norman Osborn’s Thunderbolts',
      'Shot Hawkeye\'s bowstring',
      'Can make a 3 mile sniper shot',
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
        title: faultsTitle,
        categoryType: CategoryType.Faults,
        id: CategoryType.Faults.index,
      ),
    ];

    return list;
  }

  @override
  Future<List<Information>> getFaults() {
    var list = indexing(<Information>[
      Information(
          title: 'Human Physiology',
          description:
              'As with most street-level Marvel heroes, Black Widow may be capable of feats far greater than any normal person, but she is still very much human '
              'in the end of the day. As such, regular human weaknesses still apply to her as well as the appropriate limits.'),
    ]);
    return returnData<List<Information>>(list);
  }
}

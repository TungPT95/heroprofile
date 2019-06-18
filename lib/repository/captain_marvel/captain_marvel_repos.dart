import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/character_repos/character_repos.dart';

class CaptainMarvelRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Carol Danvers entered the Air Force upon graduating from high school to pursue her love of aircrafts and her dreams of flying. Carol was a top '
        'student at the Air Force Academy and enjoyed a rapid career advancement rising to the rank of Major. Because of her stellar performance, '
        'superb combat skills and natural intellect, Carol was recruited into the intelligence field. She ended up serving with the C.I.A., during '
        'which time she met and worked with Colonel Nick Fury. She was partnered with Colonel Michael Rossi and the two became lovers. Carol had a '
        'distinguished career in the C.I.A. While on special assignment with Nick Fury, Carol met the Canadian agent called Logan. The two were eventually '
        'paired up and shared a number of adventures together. During one of their infamous escapades, they clashed with the brutal Sabretooth who was working '
        'for the Hellfire Club. During their time together, Logan and Carol became close friends, perhaps even lovers. Both have saved each other’s lives numerous times.'
        '\n\nWhen Carol was captured by the KGB and imprisoned at Lubyanka prison, Logan was among those who defied orders to save her. Following her affiliation with the'
        ' C.I.A., Carol took a position with N.A.S.A. as the security director for Cape Canaveral. It was in this capacity that Carol first met Captain Marvel, '
        'the Kree warrior, Mar-Vell. In her official capacity, Carol was challenged with unraveling the mystery of this alien soldier. During her investigation,'
        ' the two forged a unique bond, first as friends and then as lovers. It was this relationship that would change Carol forever.'
        '\n\nCaptain Marvel\'s mortal enemy, Colonel Yon-Rogg kidnapped Carol, using her as bait in his conflict with Mar-vell. In the course of the battle, '
        'Carol and Mar-vell were caught in the explosion of a Kree Psyche-Magneton device. The energy bombardment somehow caused Carol’s genetic structure '
        'to be melded with Mar-vell\'s. While Mar-vell was apparently unaltered by the event, Carol was now a perfect hybrid of Kree and human genes. '
        'In addition, she possessed all of Mar-vell\'s Kree knowledge and training. Through this transformation, Ms. Marvel was born.'
        '\n\nBecause of her failure to capture Captain Marvel, Carol lost her job at N.A.S.A. She recovered quickly, writing a successful novel about her '
        'experience in the space industry. This lead to her landing a position as the editor of WOMAN magazine, a subsidiary of the Daily Bugle. Carol’s '
        'viewpoints as a staunch feminist created tensions with her boss J. Jonah Jameson, but made her the perfect choice to be WOMAN magazine’s editor.'
        '\n\nJust as Carol was beginning this new chapter of her life, the powers and persona of Ms. Marvel began to emerge. At first, Carol experienced '
        'blackouts triggered by Ms. Marvel’s precognitive seventh sense and the two personas were very distinct, both mentally and physically. As time '
        'went on and Carol came to accept her new role as Ms. Marvel, the two personalities merged.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var energyAbsorbtionList = <Information>[
      Information(description: 'Regenerative Healing Factor'),
      Information(description: 'Minor Molecular Control'),
    ];
    var list = indexing(<Information>[
      Information(
          title: 'Flash Precognition',
          description:
              'A form of a seventh sense that allows Carol to react or counter her opponents next move.'),
      Information(
          title: 'Toxin Immunity',
          description:
              'Thanks to her amalgamated human/alien Kree physiology, Captain Marvel has a degree of immunity to toxins and poisons.'),
      Information(
          title: 'Photonic Blast',
          description:
              'Captain Marvel has the ability to manipulate photonic energy from her hands and fingertips. This power is strong enough to fry a human '
              'being as shown with her fight against Warbird. She can adjust this energy to create beams which are strong enough to damage Count Nefaria, '
              'who has been compared to the likes of Thor in power as well as Iron Man in a Hulkbuster-style armor. She can also make her beams curve which she '
              'demonstrated in a battle against Iron Man. Marvel can also create an energy field that is basically a large ball of photonic energy which can explode,'
              ' she can increase the power of her blows to battle with the likes of Wonder Man and the Hulk, surround herself with photonic energy into order to protect '
              'her from blasts of energy (she can do this in both the comics and EMH), can transfer energy in the ground to create shockwaves, she can also electrify '
              'herself through photonic manipulation as shown with the fight against Count Nefaria.'),
      Information(
          title: 'Energy Absorbtion',
          description:
              'Carol is capable of absorbing different types of energy, down to magical energy, to temporarily enhance her own powers.'),
      Information(
          title: 'Energy Absorbtion',
          description:
              'Carol is capable of absorbing different types of energy, down to magical energy, to temporarily enhance her own powers.',
          subInformation: energyAbsorbtionList),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          description:
              'Is susceptible to telepathic attacks and immensely powerful magic'),
      Information(
          description:
              'While she can absorb energy, will not be able to absorb it if it is far too much for her to handle'),
      Information(
          description:
              'Her Binary form operates under a time limit, meaning that she can’t use it forever and once the Binary form is gone she will be weakened, as it drains a lot of her energy.'),
      Information(
          description:
              'Has gone through periods of alcoholism that puts Tony Stark to shame'),
      Information(
          description:
              'Her Flash Precognition is unreliable and activates at random.'),
      Information(
          description:
              'The infamous comic where she was forcibly impregnated...'),
      Information(description: 'Civil War II'),
      Information(
          description:
              'Carol is also a bit of a hothead, and while her recklessness has helped her, it has also proven to be detrimental to her at times as she has been '
              'overpowered by far stronger foes.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getAlternateForms() {
    var whiteHolePowersList = indexing(<Information>[
      Information(
          description: 'Increased strength, speed, durability and senses'),
      Information(description: 'Increased energy output/absorption'),
      Information(description: 'Enhanced Heat Projection'),
      Information(description: 'Enhanced Light Manipulation'),
      Information(description: 'Radiation'),
      Information(description: 'Gravity Manipulation'),
      Information(description: 'Electromagnetic Projection'),
    ]);

    var list = indexing(<Information>[
      Information(
          title: 'White Hole Powers', subInformation: whiteHolePowersList),
      Information(
          title: 'Cosmic Awareness',
          description:
              'As Binary, Carol became cosmically aware to sense all energies and disruptions across the galaxy.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Backhanded a military tank being hurled at her.',
      'Can easily lift and throw cars, often weaponizing them into battering rams or projectiles.',
      'Is strong enough to hurt and kill powerful alien races such as the Brood, Kree, and Skrulls.',
      'Strong enough to knock out Cassandra Lang/Stature, when she grew to her full height',
      'Supported the full weight of a collapsing tower.',
      'Even when weakened, lifted and pulled a full subway train by herself.',
      'Punched an alien into space with a single strike of her left arm, which Carol admits is her weaker arm.',
      'Strong enough to stop a meteor and then throw it and destroy it by punching it.',
      'Damaged one of Tony’s most durable and powerful armors, the Model Prime.',
      'Knocked the Sentry away, who is as durable as Thor and Hulk.',
      'Strong enough to smash the Hulk (Doc Green version) down and create a crater.',
      'Can lift and throw a water tower.',
      'Recorded hit of 92 tons of force.',
      'Obliterated a planet as Binary.',
      'Has punched sharks multiple times and one time she threw one shark into another shark',
      'Once punched a dinosaur in the face and knocked it out in one blow.',
      'Stronger than Iron Man who surpasses Grey Hulk',
      'Being above Iron Man by extension makes her above The Thing who fights Miracle Man consistently',
      'Binary can threaten to destroy a newborn universe',
      'Binary draws on the fabric of the universe',
    ];

    //speedList
    var speedList = <String>[
      'Flew from Earth to the tip of the atmosphere in just over a minute.',
      'Can easily dodge and react to bullets and lasers.',
      'As Binary, can easily move faster than light',
      'Traveled 500 miles in five minutes.',
      'Blitzed Gamora during their fight.',
      'Quickly reacted to a grenade and managed to throw it before it exploded.',
      'Dodged a Tachyon Blast from Doomsday Man.',
      'Flew from Manhattan to the coast of Florida, which is 1154.6 miles in about 50 seconds, which has been calculated to be 180 mph.',
      'Dodged a shot that was stated to be faster than light.',
      'Broke through the atmosphere and reached outerspace multiple times.',
      'Quickly flown through the galaxy and almost outspeed instant teleportation.',
      'As mentioned, on the same tiering of Iron Man who’s pretty darn fast',
      'Like pretty fast (for reference 1 picosecond at a distance at one meter is at the very least is 3335 times faster than light)',
      'Binary is comparable to people such as Gladiator who are even more ludicrous in speed',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Is capable of withstanding high-caliber rounds, great impacts from powerful beings, falls from great heights, '
          'exposure to extreme temperatures and pressure, and immensely powerful energy blasts',
      'Can survive the vacuum of space',
      'Survived a fall from outer space to Earth...several times',
      'Tanked a blast from Phoenix Magik.',
      'Used her own body to keep a train with passengers from crashing and shrugged it off',
      'Took several punches from a blood lusted Wonder Woman, being sent across a city throughout it all',
      'Took several high powered magical blasts and spells from the Traveler, and still won while with a broken arm',
      'Survived being point blank in a nuclear explosion and was perfectly fine and alive 12 hours later',
      'Survived being within the explosion of the Psyche-Magnetron, which was of similar if not greater size than a nuclear explosion, and was only briefly stunned',
      'Fought off a Skrull invasion on New York for an entire day without resting to save time for reinforcements',
      'Took a nuclear warhead head-on and only her costume was damaged.',
      'Tanked an explosion which, based on the size of the blast, destroyed a large building.',
      'Tanked a multi-city block explosion and survived.',
      'Tanked a blast from SHIELD’S most powerful gun at the time (the gun has the ability to disintegrate any matter).',
      'Tanked a blast from Thanos when he was weakened.',
      'Tanked a Tachyon Blast, which has enough destructive power to destroy the top of a volcano.',
      'Survived two hits from Destructor\'s beam.',
      'Took a barrage of Iron Man armors',
      'Takes a hit from Null the World Breaker (no he’s not a Hulk)',
      'In Binary, can survive hits from Gladiator who’s above people like the Enchantress who can scream really loud',
    ];

    //skillList
    var skillList = <String>[
      'Became the commander of the Alpha Flight Space Program',
      'Became a member of the Avengers and the X-Men.',
      'Started and was the “victor” in Civil War II.',
      'Fought the Brood forces and destroyed Brood World .',
      'Played an integral role in stopping the Skrulls in Secret Invasion as well as fought the Super Skrull.',
      'Defeated Iron Man in a suit that was designed to defeat specifically to defeat Captain Marvel (and is stronger than the Hulk Buster).',
      'Defeated Warbird, another version of herself.',
      'Defeated the Absorbing Man, who has traded blows with the Thor and Hulk.',
      'Fought the Vision and defeated him.',
      'Fought and defeated Stature, a.k.a Scott Lang’s daughter.',
      'Fought a brainwashed and bloodlusted Wonder Man, who has matched the likes of Thor and Hyperion, and has been compared to the Sentry in power level by Captain America.',
      'Didn’t kill Iron Man in CW II',
      'Didn’t die from Rogue\'s touch',
      'Fought a more powerful version of Wonder Man and managed to hold her own, though she eventually lost.',
      'After absorbing the power of a nuclear warhead, was able to match Sentry in physical capabilities.',
      'Is possibly just as if not, superior to Thor in every category.',
      'A decomposing clone of Carol, made up from her memories absorbed by Rogue (Marvel Comics), managed to nearly defeat her and only lost due to Magneto\'s intervention.',
      'Dealt immense damage to Count Nefaria with her Photonic Blasts.',
      'Prevented the sun from going supernova by absorbing all the Antimatter.',
      'Fought the Hulk  (several times in fact, one of which being during the World War Hulk event) and managed to damage him, though Hulk managed to defeat her.',
      'Fought Rogue with Ice-Man’s powers and almost defeated her.',
      'Fought Moonstone, one of her main rivals and clashed pretty equally with her, though lost by being thrown into an Airplane, which she survived.',
      'Overcame the Venom symbiote.',
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
        id: CategoryType.Background.index,
      ),
      CharacterDetailCategory(
        title: alternateFormsTitle,
        categoryType: CategoryType.AlternateForms,
        id: CategoryType.Background.index,
      ),
      CharacterDetailCategory(
        title: featsTitle,
        categoryType: CategoryType.Feats,
        id: CategoryType.Background.index,
      ),
      CharacterDetailCategory(
        title: weaknessesTitle,
        categoryType: CategoryType.Weaknesses,
        id: CategoryType.Background.index,
      ),
    ];

    return list;
  }
}

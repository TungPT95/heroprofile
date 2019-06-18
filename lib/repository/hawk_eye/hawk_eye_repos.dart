import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/character_repos/character_repos.dart';

class HawkEyeRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'After losing both of their parents in a car accident and spending six years in an orphanage, Clint Barton and his brother, Barney ran away to join the '
        'Carson Carnival of Travelling Wonders. While there, Clint caught the attention of Swordsman and Trick Shot, who trained him to become a master archer. '
        'However, Clint found out that his mentors were embezzling money, which led to him getting beaten by Swordsman and his former mentors ran away before Clint '
        'could tell the authorities. Staying in the circus, Clint became Hawkeye, the World\'s Greatest Marksman, until he saw Iron Man in action and decided to '
        'become a superhero. However, on his first outing, he ran into the villainous Black Widow and joined her to be a criminal. After Black Widow was seriously '
        'injured in a fight with Iron Man, Hawkeye decided to turn over a new leaf and become the hero he wanted to be from the beginning, eventually joining the Avengers.');
  }

  @override
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          title: 'Hearing',
          description:
              'Should his hearing aids be destroyed, he will lose 80% of his hearing.'),
      Information(
          title: 'Limited Quiver',
          description:
              'He has a limited amount of arrows, so he needs to make each shot count.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getFunFacts() {
    var list = indexing(<Information>[
      Information(
          description:
              'Hawkeye is considered the Marvel Comics counterpart of DC Comics Green Arrow.'),
      Information(
          description:
              'Hawkeye is the only Marvel Comics character to join the Justice League. He did so in JLA/Avengers.'),
      Information(
          description:
              'Hawkeye has fought under 4 superhero names, Hawkeye, Golden Archer, Goliath, and Ronin'),
      Information(description: 'Hawkeye had 6 past romances.'),
      Information(description: 'Hawkeye\'s favorite movie is Blade Runner.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var list = indexing(<Information>[
      Information(
          title: 'Bow',
          description:
              'Hawkeye\'s bow is customized to have a draw-weight of 250 pounds.'),
      Information(
          title: 'Trick Arrows',
          description:
              'Hawkeye has many trick arrows for almost any situation. Some examples are putty arrows, EMP arrows, explosive arrows, '
              'acidic arrows, parachute arrows, Pym Particle arrows filled with miniature arrows, smoke bomb arrows, taser arrows, boomerang arrows, '
              'grapple hook arrows, bola arrows, adamantium arrows that can cut through almost anything, Antarctic vibranium arrows that can disintegrate metals, '
              'sleep dart arrows, tear gas arrows, boomerang arrows, net arrows, rocket arrows, and arrows that freeze whatever they hit.'),
      Information(
          title: 'Suit',
          description:
              'Hawkeye\'s suit was upgraded to have chain mail after a near death experience.'),
      Information(
          title: 'Hearing Aids',
          description:
              'After being ambushed and stabbed in the ears with two arrows, Tony Stark made him hearing aids to fix his hearing.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Hawkeye can fire his bow at machine gun speeds while wearing chain mail.',
      'Can fire as many as nine arrows at once and hit all targets.',
      'He pushed a car with nothing but his bare hands when he was under it.',
    ];

    //speedList
    var speedList = <String>[
      'Can dodge arrows and gunfire.',
      'Grabbed his bow and shot down four arrows right as they were about to hit him.',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Fell off a building.',
      'Fought battles with a broken rib cage.',
      'Recovered in 6 weeks after being shot with hundreds of arrows.',
      'Is still able to shoot his bow while having one of his arms broken.',
      'Once had a marathon 42 hour target practice session with no breaks.',
    ];

    //skillList
    var skillList = <String>[
      'Caught an arrow when he was blinded.',
      'Can ricochet arrows for precision shots.',
      'Tagged Taskmaster while riding a motorcycle.',
      'Shot an arrow down a gun barrel.',
      'Hit a bulls-eye while upside-down and spinning.',
      'Fired an arrow with his mouth and managed to hit his target.',
      'Pinned a thrown card to the wall.',
      'Pinned someone to a wall with an arrow while blind.',
      'Threw a playing card hard to make someone choke.',
      'Hit a bulls-eye with an arrow before splitting the previous arrow with another one.',
      'Strung a bow and fired an arrow before enemy could release his bowstring.',
      'When he donned the mantle, "Ronin", he trained his hand-to-hand combat and it even impressed Iron Fist himself.',
      'Infiltrated Dark Avengers HQ and took on Bullseye, Daken, & Venom.',
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

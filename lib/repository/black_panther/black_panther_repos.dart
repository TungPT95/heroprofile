import 'package:hero_profile/models/character_detail_category.dart';
import 'package:hero_profile/models/feats_info.dart';
import 'package:hero_profile/models/information.dart';
import 'package:hero_profile/repository/base/character_repos/character_repos.dart';

class BlackPantherRepos extends CharacterRepos {
  @override
  Future<String> getBackground() {
    return returnData<String>(
        'Millennia ago, a meteorite made of the indestructible metal Vibranium crash-landed in the north-eastern corner of Africa, or to be more specific, '
        'the Kingdom of Wakanda. Although the natives appropriated the material for use as weapons and tools, radiation from the crash mutated them into '
        'rampaging beasts mistaken as demonic spirits. To protect his people, a local chieftain by the name of Bashenga prayed to Bast - the Panther Goddess; '
        'by becoming her Totem in the mortal realm, she would bestow upon him various superhuman abilities. Bashenga used these gifts to unite the tribes as one '
        'and drive back the dangers which threatened them, becoming their leader and protector, having been bestowed the title of the Black Panther.'
        '\n\nSince then, the title of Black Panther and King of Wakanda was passed on through Bashenga’s descendants, but it was not just a simple matter of inheritance. '
        'To become the kingdom’s protector involved completing numerous rites of passage to prove one’s resolve and gain Bast’s blessing, and all members of the royal'
        ' bloodline have followed it without fail. As the years went by, the rulers of Wakanda opted to keep their country hidden away in the dark for fear of outsiders '
        'misusing the Vibranium for their own ends. All of this would change with the rise of the modern Black Panther: a young prince by the name of T’Challa.'
        '\n\nAfter his father T’Chaka was murdered by arms dealer Ulysses Klaw over the Vibranium mound, T’Challa prepared himself for the responsibilities '
        'he needed to accept as his uncle S’yan assumed the role of king for the time being. After receiving further training and education abroad to hone his '
        'skills as a warrior and leader, he returned home to challenge and defeat the other chieftains of Wakanda’s tribes and S\'yan himself, allowing him '
        'to consume the Heart-Shaped Herb and earn the title of Black Panther, along with the powers it possessed.'
        '\n\nHis tests finally complete, T’Challa ascended to the throne and became king, but he came to the realization that he needed to do more than his '
        'predecessors as protector, and began taking a more active role as his masked alter-ego. He started slowly re-integrating his country with the '
        'international community, all while he allied himself with superheroes such as the Avengers and battling villainous forces who threaten not only '
        'Wakanda’s safety, but the rest of the world as well. In his dual roles as king and warrior, one thing is certain: the Black Panther will rise to '
        'defend his people at all costs until his dying breath.');
  }

  @override
  Future<List<Information>> getPowersAbilities() {
    var list = indexing(<Information>[
      Information(
          title: 'Divine Empowerment',
          description:
              'T’Challa’s powers were bestowed by the Goddess Bast upon his ascension as king, when he consumed the mysterious Heart-Shaped Herb. '
              'Said to have been mutated by Vibranium radiation during Bashenga’s time, those who are tasked with becoming the Black Panther must '
              'defeat their predecessor in combat, as well as the champions of Wakanda’s tribes. After gaining the favor of the gods, the Herb’s juices are '
              'applied to their body, granting them the superhuman capabilities associated with their new role. With his new enhancements, Black Panther now '
              'has the physical prowess of a super-soldier on par with, if not greater than, the likes of Captain America. He can lift up to 800 tons, reach '
              'speeds up to 40 mph, track movements faster than a normal eye can see, fight for days on end without fatigue and heal from wounds faster, although '
              'not to the extent of superior healing factors like Wolverine’s and Deadpool’s. His senses have also been finely-tuned, allowing him to see in total darkness - '
              'even infrared or ultraviolet light, identify targets through scents, detect lies through body movement and hear past the limits of a normal man. In recent years,'
              ' T’Challa lost the Heart-Shaped Herb’s powers after he was forced to vacate the throne for his half-sister Shuri, but eventually forged a new pact with Bast '
              'to become the King of the Dead and ruler of Necropolis - the Wakandan equivalent of the underworld. Not only were T’Challa’s powers restored to the previous '
              'levels he once possessed as Black Panther, but he became linked with the spirits of previous Black Panthers as well, allowing him to channel their strength, '
              'memories and experiences in combat. In addition, his link to Bast allows him to request her to teleport himself and others to locations of his choosing. '
              'In most cases, Black Panther can tap into his powers as King of the Dead further should the situation call for it. At his strongest, he is strong enough '
              'to take on foes like the Hulk, the Phoenix Force, Mindless Ones, and the generals of the Mad Titan, Thanos.'),
      Information(
          title: 'Master Martial Artist and Hunter',
          description:
              'Black Panther is one of the greatest martial artists in the Marvel universe. Initially trained in various Wakandan disciplines as a child, '
              'his travels around the world saw him master every single form of unarmed and armed combat, ranging from traditional fighting styles such as Boxing,'
              ' Karate, Judo, Taekwondo, Kenpo, Sambo and the like, to ones which have been kept secret from the outside world. Combined with his superhuman capabilities '
              'and mental fortitude, this has allowed him to battle entire hordes of enemies at once, and can roughly considered to be on par with other great superhero'
              ' martial artists (if not better), like Iron Fist, Daredevil, Wolverine and Captain America. Black Panther is also a talented hunter, capable of memorizing '
              'the scents of his prey and using ranged weapons like throwing knives and bows to kill targets from afar. He can also disguise himself and make use of '
              'stealth tactics to avoid detection.'),
      Information(
        title: 'Intellect and Magic',
        description:
            'Before becoming the Black Panther, T’Challa embarked on several trips to influential universities in the United States and Europe. He acquired a PhD in Physics '
            'from Oxford, but also attended classes and lectures in Harvard, Stanford, Cambridge and others, endowing with him the knowledge to succeed not just as a '
            'leader, but as a fighter and a scientist. With his intellect, Black Panther earned a reputation as one of the smartest minds in the Marvel Universe, '
            'considered to be on par - if not superior on occasion than - with the likes of Mr. Fantastic, Iron Man and Doctor Doom. Combined with Wakanda’s vast '
            'Vibranium supply and the massive funds made from selling small quantities of it, he has invented many of the devices he uses on the field and used the '
            'support of Wakandan mystics and scientists to further refine their technology, resulting in Wakanda being the most technologically advanced country on '
            'Earth. T’Challa has used magic in the past to increase his strength and resistance against similarly-powered foes. His current state as King of the '
            'Dead has granted him knowledge in necromancy, allowing him to resurrect the dead and command them into battle. He has also married his use of science '
            'and magic to create Shadow Physics, which only a select few in the Marvel Universe have managed to be proficient in, but not to the extent of T’Challa '
            'himself. Shadow Physics allow Black Panther to summon Shadow weapons on command, and track Vibranium sources on a quantum level. The weapons he can conjure'
            ' simultaneously exist on a plane of existence and non-existence.',
      ),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<Information>> getEquipment() {
    var list = indexing(<Information>[
      Information(
          title: 'Vibranium Suit',
          description:
              'Black Panther’s Habit is more than just a symbol of his role as Wakanda’s defender, as it also doubles as a nearly indestructible tool '
              'of vengeance which T’Challa is always seen wearing in combat, and can summon remotely in any situation. The suit and its claws are made of '
              'the same alloy: the nearly indestructible metal known as Vibranium. Vibranium has been stated by many to be the strongest metal in the world. '
              'The Panther Habit is primarily made of the Wakanda variant, which tends to be its most well-known portrayal. Wakandan Vibranium absorbs nearly '
              'vibrations and kinetic energy sources to reinforce its molecular bonds; if an object made of this metal were to absorb a large amount, it would '
              'become nearly impossible to destroy. That said, it can be destroyed if enough force were to be applied, causing the store energy to be released in a '
              'large explosion, although what those limits are have not been determined. The Vibranium woven into the Panther Habit can also rob the momentum of any '
              'object it makes contact with, allowing Black Panther to walk silently and on different surfaces (like water) as well as giving him immense resistance'
              ' against gunfire and piercing attacks. It\'s claws are made out of are made of Antarctic Vibranium, a variant exclusive to the Savage Land in Antarctica'
              ' which acts in the opposite fashion of its African counterpart. It instead creates vibrations which are strong enough to liquefy and destroy almost any metal,'
              ' including other indestructible alloys like Adamantium'),
      Information(
          title: 'Vibranium Energy Daggers',
          description:
              'Should Black Panther need weapons for armed combat, he can use his Vibranium Energy Daggers to cut through other materials much like his claws and stun or kill '
              'his foes depending on his needs. The daggers’ length can be adjusted and fused together to form different weapons like longswords, scythes, lances, and axes,'
              ' and the hilts which store their energy have large enough storage capacities to ensure it never runs out in the heat of battle. Its energy is also noted for '
              'their ability to scramble electronics, including technology made by Iron Man himself and even highly advanced A.I.s like Ultron. Other assorted gadgets and tools '
              'included in the Habit include flashbangs, cloaking devices, EMPs (including a forcefield that prevents Black Panther’s tools from being affected by enemy EMP '
              'attacks), a built-in electric field to shock enemies, an air filter to prevent gas attacks, a shield made of hardened light, and the Kimoyo Card - a'
              ' PDA linked to satellites surrounding the Earth which keep track of Black Panther’s movements and objectives, hack into almost anything, pull up required'
              ' information for missions, jam frequencies, and track down targets hit by his energy daggers.'),
      Information(title: 'Energy claws'),
      Information(title: 'Flash marbles'),
      Information(title: 'EMP'),
      Information(title: 'Weapon disruptors'),
      Information(title: 'Anti-Metal Claws'),
      Information(title: 'Breaks down metal on contact'),
      Information(title: 'Teleportation device'),
      Information(title: 'Cloaking device'),
      Information(title: 'Force fields'),
      Information(title: 'Vibranium shields EMPs'),
      Information(
          title: 'Ebony Blade',
          description:
              'The Ebony Blade is the signature weapon of the Black Knights, first bestowed upon their originator by the wizard Merlin, who had wanted to '
              'forge an equal to King Arthur’s Excalibur. In time, other individuals such as Ares, Valkyrie, Namor and eventually T’Challa himself came to wield this mystic '
              'sword. Wielders of the Ebony Blade can deflect and absorb energy-based attacks, and is immune to effects caused by other sources of magic. The sword itself is '
              'indestructible, and can cut through almost anything, barring other materials - man-made or magical - of similar strengths; Black Panther had once used it to cut '
              'through Iron Man\'s Extremis suit with little effort. Wielders can summon it remotely or can choose to transport themselves instead to the sword’s location, and Merlin\'s '
              'enchantments prevent them from dying, although they can still be injured or otherwise incapacitated.'),
    ]);

    return returnData<List<Information>>(list);
  }

  @override
  Future<List<FeatsInfo>> getFeats() {
    //strengthList
    var strengthList = <String>[
      'Energy claws can pierce Iron Man',
      'Lifted a giant wheel and snapped through steel chains',
      'Wrestled a crocodile and a lion',
      'Broke Super Skrull’s arms and legs',
      'Tossed around robotic animals and stopped an elephant in it’s tracks',
      'Fought actual black panthers',
      'Spider-Man states that Black Panther\'s punches can cripple ordinary people',
      'Slammed through a rhino',
      'Almost punched off Red Skull’s jaw',
      'Decapitated Doombots',
      'Used a tree as a spear',
      'Lifted a throne that took 3 men to lift',
      'Punched back Namor',
      'Bulldogged a 1.5 ton rhino and a 5 ton one',
      'Uses Antarctic Vibranium claws to destroy steel',
      'In his full King of the Dead state, he made the Hulk bleed, destroyed a glass prison meant to restrain the Superior Iron Man, '
          'defeated several Mindless Ones and defeated Black Dwarf (one of Thanos\' generals) and his army so soundly they were forced into retreat.',
    ];

    //speedList
    var speedList = <String>[
      'Caught Spider-Man, in spite of his Spider-Sense',
      'Outraced Wolverine',
      'Caught Sabretooth, despite Sabretooth having a head start',
      'Faster than the animal he was named after',
      'Dodged attacks from Super Skrull',
      'Blitzed Cyclops',
      'Intercepted Silver Surfer’s board',
      'Beat up 4 men in the time it takes to say \"quite severely\"',
      'Caught bones being thrown with precision like Bullseye from Super Skrull',
      'Dodges automatic gunfire pretty much every single day of his life',
    ];

    //durabilityList
    var durabilityList = <String>[
      'Blocked bullets',
      'Blocked Magneto’s best attack',
      'Fought Killmonger for 13 hours, who can kill an elephant with a shoulder charge',
      'Stayed conscious after getting blasted by Star Dust',
      'Blocked knives',
      'Tanked a PBR explosion',
      'Tanked a blast from Phoenix Namor',
      'Got backhanded by Hulk',
      'Resisted magic',
      'Has an emergency force field',
      'Took punches from Namor',
      'Fought and tanked hits from a demon possessed Iron Fist',
      'Psychic resistance is great enough that Emma Frost hurts herself trying to read his mind. *Even Cable struggles to detect him.',
      'Redirected Storm’s lightning',
      'Vibranium prevents EMP attacks',
      'Enemy blades are destroyed by the Habit',
      'Absorbed a Repulsor blast from Ezekiel Stane and released it into the ground',
    ];

    //skillList
    var skillList = <String>[
      'Fought Namor',
      'Fought Iron Man in a suit that was designed for fighting T’Challa and outsmarted him',
      'Fought Killmonger',
      'Fought Captain America (Cap notes that T\'Challa is unfocused on their fight, and is still dominant)',
      'Claimed that his senses rivals Wolverine\'s.',
      'Fought a space werewolf',
      'Bested the Fantastic Four',
      'Beat Karnak twice, who can sense all weaknesses',
      'Skilled at nerve strikes',
      'Fought Doctor Strange',
      'Beat six of Wakanda’s best warriors at once',
      'Has mastered every martial art on Earth.',
      'Fought a Super Skrull who possessed the knowledge of multiple master martial artists and won.',
      'Used energy daggers to cut through steel',
      'Wielded the complete Infinity Gauntlet to battle the Beyonder-powered Doctor Doom.',
      'Energy daggers can bypass Ultron\'s Adamantium shell to scramble his internal systems',
      'Stated to be the 8th smartest person in the world',
      'Tony Stark claims that T\'Challa knows as much as him about the Iron Man suits',
      'Considers Reed Richards to be one of the only people that can keep up with him and created shadow physics',
      'Is at least as smart as Tony Stark',
      'Has a contingency plan for beating almost anyone in a fight, including Galactus',
      'Created the techno jungle under Wakanda',
      'He and Reed have been stated by Tony to be the smartest people he knows',
      'Read the body language of a Super Skrull',
      'Learned every fighting style in the world',
      'Ambushed Mephisto with prep time and ripped out his heart',
      'Outsmarted Doctor Doom',
      'Developed a Hulkbuster with Wakandan technology to defeat Amadeus Cho, the second Hulk',
      'Capable of making gadgets from a normal hardware store, like a watch which can hack into nearby devices or a forcefield.',
      'Can literally track a person\'s soul.',
      'Kimoyo card can hack and shut down alien technology',
      'Depowered Silver Surfer using technology copied from Doctor Doom',
      'Used Shadow Physics and the Nowhere Room to probe Galactus\' memories',
      'Saw Doctor Strange\'s Astral form',
      'Defeated Klaw, Wolverine, Red Skull, Namor, & Doctor Doom',
      'He can track your soul',
      'He takes down Luke Cage',
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
  Future<List<Information>> getWeaknesses() {
    var list = indexing(<Information>[
      Information(
          title: 'Suit\'s Weak Spots',
          description:
              'Despite the Black Panther Habit’s Vibranium composition, it is not entirely invincible; small linings along the grains of the suit that can be cut '
              'through can allow observant opponents to exploit these openings and bypass much of T’Challa’s defenses.'),
      Information(
          title: 'Enhanced Senses',
          description:
              'C be abused to an extent through radically strong stimuli like flashbangs and the Hulk’s thunder claps, although he has found ways to work around them.'),
    ]);
    return returnData<List<Information>>(list);
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

import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/repository/base/repository.dart';

class ComicsRepos extends Repository {
  Future<List<Comic>> getComics() {
    var list = indexing(<Comic>[
      Comic(
          title: 'DC Comics',
          shortDesc: 'DC Comics, Inc. is an American comic book publisher. '
              'It is the publishing unit of DC Entertainment, '
              'a subsidiary of Warner Bros. since 1967',
          imgPath: 'https://images-na.ssl-images-amazon.com/images/'
              'S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg',
          fullDesc: 'DC Comics, Inc. is an American comic book publisher. '
              'It is the publishing unit of DC Entertainment, a subsidiary of Warner Bros. since 1967. '
              'DC Comics is one of the largest and oldest American comic book companies, and produces material '
              'featuring numerous culturally iconic heroic characters including: Batman, Superman, Wonder Woman, The Flash, '
              'Green Lantern, Aquaman, Shazam, Martian Manhunter, Nightwing, Green Arrow, Hawkman, Cyborg and Supergirl.'
              '\n\nMost of their material takes place in the fictional DC Universe, which also features teams such as the'
              'Justice League, the Teen Titans, the Justice League Dark, and the Doom Patrol, and well-known villains such '
              'as Lex Luthor, Darkseid, Brainiac, The Joker, Catwoman, Ra\'s al Ghul, Ares, Cheetah, Professor Zoom, Sinestro, '
              'Black Manta, Ocean Master, Black Adam and Deathstroke. The company has also published non-DC Universe-related material,'
              ' including Watchmen, V for Vendetta, and many titles under their alternative imprint Vertigo.'
              '\n\nThe initials \"DC\" came from the company\'s popular series Detective Comics, which featured Batman\'s debut '
              'and subsequently became part of the company\'s name. Originally in Manhattan at 432 Fourth Avenue, the DC Comics offices'
              ' have been located at 480 and later 575 Lexington Avenue; 909 Third Avenue; 75 Rockefeller Plaza; 666 Fifth Avenue; '
              'and 1325 Avenue of the Americas. DC had its headquarters at 1700 Broadway, Midtown Manhattan, New York City, however '
              'DC Entertainment relocated its headquarters from New York to Burbank, California in April of 2015.'
              '\n\nRandom House distributes DC Comics\' books to the bookstore market, while Diamond Comic Distributors '
              'supplies the comics shop specialty market. DC Comics and its longtime major competitor Marvel Comics '
              '(acquired in 2009 by The Walt Disney Company, WarnerMedia\'s main competitor) together shared approximately '
              '70% of the American comic book market in 2017.'),
      Comic(
          title: 'Marvel Comics',
          shortDesc:
              'Marvel Comics is the brand name and primary imprint of Marvel Worldwide Inc.,'
              ' formerly Marvel Publishing, Inc. and Marvel Comics Group, '
              'a publisher of American comic books and related media',
          imgPath:
              'https://vignette.wikia.nocookie.net/marveldatabase/images/b/b2/'
              'Avengers_Ultron_Forever_Vol_1_1.jpg/revision/latest?cb=20150328022658',
          fullDesc:
              'Marvel Comics is the brand name and primary imprint of Marvel Worldwide Inc., '
              'formerly Marvel Publishing, Inc. and Marvel Comics Group, a publisher of American comic '
              'books and related media. In 2009, The Walt Disney Company acquired Marvel Entertainment, Marvel Worldwide\'s parent company.'
              '\n\nMarvel started in 1939 as Timely Comics, and by the early 1950s had generally become known as Atlas Comics. '
              'The Marvel era began in 1961, the year that the company launched The Fantastic Four and other superhero titles '
              'created by Steve Ditko, Stan Lee, Jack Kirby and many others. The Marvel brand had been used over the years,'
              'but solidified as the company\'s only brand within a couple of years.'
              '\n\nMarvel counts among its characters such well-known superheroes as Spider-Man, the Hulk, Iron Man, Thor, '
              'Captain America, Wolverine, Black Panther, Doctor Strange, Black Widow, Scarlet Witch, Hawkeye, Daredevil, '
              'the Punisher, the Silver Surfer, Ant-Man and Deadpool, such teams as the Avengers, the X-Men, the Fantastic Four, '
              'the Defenders, and the Guardians of the Galaxy, and supervillains including Doctor Doom, Thanos, Magneto, Ultron, '
              'Doctor Octopus, Green Goblin, Red Skull, Loki, Abomination, Kang the Conqueror, Venom, Mystique, '
              'the Mandarin, Kingpin, Apocalypse and Galactus. Most of Marvel\'s fictional characters operate in a single reality '
              'known as the Marvel Universe, with most locations mirroring real-life places; many major characters are based '
              'in New York City.'),
    ]);
    return returnData<List<Comic>>(list);
  }
}

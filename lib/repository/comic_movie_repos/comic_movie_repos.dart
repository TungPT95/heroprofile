import 'package:hero_profile/models/comic_movie.dart';
import 'package:hero_profile/models/movie.dart';
import 'package:hero_profile/repository/base/repository.dart';

class ComicMovieRepos extends Repository {
  Future<List<ComicMovie>> getAllMovie() {
    final dcMovies = _getDcMovie();
    final marvelMovies = _getMarvelMovie();

    final list = indexing(<ComicMovie>[
      ComicMovie(comicTitle: 'DC', movies: dcMovies),
      ComicMovie(comicTitle: 'Marvel', movies: marvelMovies),
    ]);
    return returnData<List<ComicMovie>>(list);
  }

  List<Movie> _getDcMovie() {
    return indexing(<Movie>[
      Movie(
          title: 'Man of Steel (2013)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/thumb/8/85/ManofSteelFinalPoster.jpg/220px-ManofSteelFinalPoster.jpg',
          desc: 'Kal-El / Clark Kent, who arrived on Earth '
              'years ago as an infant from Krypton, struggles with why he was sent to Earth. Raised by '
              'his adoptive parents, Jonathan and Martha Kent, Clark adopts the persona "Superman", and '
              'learns if his abilities are meant to maintain peace or conquer the world.'
              '\n\nDuring story discussions for The Dark Knight Rises, David S. Goyer told Christopher '
              'Nolan his idea regarding how to present Superman in a modern context. Impressed with'
              ' Goyer\'s concept, Nolan pitched the idea to the studio, who hired Nolan to produce and'
              ' Goyer to write based on the financial and critical success of The Dark Knight. Zack '
              'Snyder was hired in October 2010 to direct the film. In January 2011, Henry Cavill was '
              'cast as Clark Kent / Superman. Other cast members included Amy Adams as Lois Lane, Michael '
              'Shannon as the villain General Zod, Diane Lane as Martha Kent, Kevin Costner as Jonathan '
              'Kent, Russell Crowe as Jor-El, and Laurence Fishburne as Perry White. Principal photography '
              'began on August 1, 2011. Man of Steel released in North America on June 14, 2013.'),
      Movie(
          title: 'Batman v Superman: Dawn of Justice (2016)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/thumb/2/20/Batman_v_Superman_poster.jpg/220px-Batman_v_Superman_poster.jpg',
          desc: 'Gotham City-based vigilante Batman'
              ' travels to Metropolis to preemptively combat Superman, fearing what would happen if the '
              'latter is kept unchecked, while another threat endangers humankind.'
              '\n\nIn June 2013, it was reported that Snyder and Goyer would be returning for a sequel '
              'to Man of Steel, which was being fast-tracked by Warner Bros. Nolan was involved in an '
              'advisory role as executive producer. In July, at the San Diego Comic-Con, Warner Bros.'
              ' announced that Superman and Batman would meet for the first time in a cinematic format '
              'in the film, which would be the follow-up to Man of Steel and a reboot of the Batman film '
              'series. According to Snyder, the film took inspiration from the comic The Dark Knight Returns. '
              'Cavill, Adams, Lane, and Fishburne reprised their roles. In August, Ben Affleck was cast as '
              'Bruce Wayne / Batman. In December, Gal Gadot was cast as Diana Prince / Wonder Woman, marking '
              'the character\'s first appearance in a live-action theatrical film. Later in the month, '
              'Chris Terrio was hired to rewrite Goyer\'s script. In January 2014, the film was delayed '
              'from its July 17, 2015, release date to May 6, 2016, to give the filmmakers "time to realize '
              'fully their vision, given the complex visual nature of the story". Later that month, Jesse '
              'Eisenberg and Jeremy Irons joined the cast as Lex Luthor and Alfred Pennyworth, respectively. '
              'In May 2014, the film\'s title was revealed to be Batman v Superman: Dawn of Justice. Initial '
              'filming occurred on October 19, 2013, at East Los Angeles College, before full principal '
              'photography began on May 21, 2014, in Detroit. Production also took place in Illinois, New '
              'Mexico, Africa and the South Pacific. After another date change, the film was released in '
              'North America on March 25, 2016.'
              '\n\nThe film is set 18 months after the events of Man of Steel. Batman v Superman: Dawn of '
              'Justice introduced Ezra Miller as Barry Allen / The Flash, Jason Momoa as Arthur Curry / Aquaman, '
              'Ray Fisher as Victor Stone / Cyborg, and Joe Morton as Dr. Silas Stone. The film also introduced '
              'Steppenwolf, who served as the main antagonist in Justice League, through a brief scene. The scene '
              'was not included in the film\'s theatrical release, but instead was revealed online by '
              'Warner Bros. on March 28, before being included in the Ultimate Edition home video release.'),
      Movie(
          title: 'Suicide Squad (2016)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Suicide_Squad_%28film%29_Poster.png/220px-Suicide_Squad_%28film%29_Poster.png',
          desc: 'After the death of Superman, a secret government agency '
              'recruits imprisoned supervillains to execute dangerous black ops missions and rescue '
              'the world from a powerful threat, in exchange for clemency.'
              '\n\nIn February 2009, prior to the development of the DCEU, Warner Bros. was developing a '
              'Suicide Squad film, with Dan Lin producing and Justin Marks writing the script. In October '
              '2014, Suicide Squad was announced by Warner Bros., with David Ayer confirmed as director. '
              'In December, it was revealed that Ayer would also be writing the screenplay. The main cast '
              'included Will Smith as Deadshot, Margot Robbie as Harley Quinn, Jared Leto as the Joker, '
              'Jai Courtney as Captain Boomerang, Jay Hernandez as El Diablo, Adewale Akinnuoye-Agbaje as '
              'Killer Croc, Karen Fukuhara as Katana, Cara Delevingne as Enchantress, Viola Davis as '
              'Amanda Waller, and Joel Kinnaman as Rick Flag. Tom Hardy was originally cast as Rick Flag, '
              'but dropped out due to scheduling issues with his film The Revenant. Principal photography '
              'commenced April 13, 2015, and took place in and around Toronto. Filming concluded August 28, '
              '2015. Suicide Squad was released in North America on August 5, 2016.'
              '\n\nThe film is set after the events of Batman v Superman: Dawn of Justice. '
              'Affleck as Bruce Wayne / Batman and Miller as Barry Allen / The Flash made appearances '
              'in the film. In a mid-credits scene, Waller meets Wayne in a restaurant and hands him a '
              'dossier containing information on future members of the Justice League.'),
      Movie(
          title: 'Wonder Woman (2017)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/e/ed/Wonder_Woman_%282017_film%29.jpg',
          desc: 'Diana of Themyscira, an Amazon warrior '
              'who also is the demigoddess daughter of the god Zeus, uses her talents '
              'and abilities in order to help humanity during World War I.'
              '\n\nIsraeli actress and model Gal Gadot was cast as Diana Prince/Wonder Woman in '
              'December 2013 and signed a three-picture deal which included a solo film. In '
              'October 2014, Wonder Woman was announced by Warner Bros. In November, Michelle MacLaren '
              'was confirmed to direct the film from a screenplay by Jason Fuchs. In April 2015, '
              'MacLaren left the project due to creative differences. Later that month, Patty Jenkins '
              'was announced as the new director of the film. In July, Chris Pine was cast as Steve '
              'Trevor. Other cast members include Connie Nielsen as Queen Hippolyta, Robin Wright as '
              'General Antiope, Danny Huston as Erich Ludendorff, Elena Anaya as Doctor Poison, and '
              'David Thewlis as Ares. Filming began in November 2015, and was shot in the United '
              'Kingdom, France and Italy. Wonder Woman was released in North America on June 2, 2017.'),
      Movie(
          title: 'Justice League (2017)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/3/31/Justice_League_film_poster.jpg',
          desc: 'Motivated by Superman\'s death at the hands of'
              ' Doomsday, Batman and Wonder Woman assemble a team of metahumans to face a new catastrophic threat.'
              '\n\nIn June 2013, it was reported that Goyer would be writing Justice League as part of a three-film '
              'deal he signed for Man of Steel. In April 2014, it was announced that Snyder would return '
              'as director. The film was announced in October as Justice League Part One. In March 2016, '
              'it was confirmed that Chris Terrio had written the script, who said that the film would not '
              'be as tonally dark as Batman v Superman: Dawn of Justice. In June, Geoff Johns announced '
              'that the title had been changed to simply Justice League. Affleck, Cavill, Gadot, Momoa, '
              'Miller, Fisher, Irons, Lane, Adams, Eisenberg, Nielsen, Wright, and Morton reprised their '
              'respective roles from previous films. Ciarán Hinds provides the voice and performance '
              'capture for the villain Steppenwolf. Beginning on April 11, 2016, filming took place at '
              'Warner Bros. Studios, Leavesden, in England, as well as locations around London and in '
              'Iceland. Filming concluded in October 2016. In May 2017, Snyder stepped down from his '
              'duties on the film due to his daughter\'s death; Joss Whedon filled his position on '
              'post-production, with additional scenes being written and directed by him. '
              'Though Whedon was not officially credited for his role as post-production director, '
              'he completed enough additional work for a screenwriting credit on the film. Justice '
              'League was released worldwide on November 17, 2017.'
              '\n\nJustice League introduced various characters, including J. K. Simmons as James'
              ' Gordon, Amber Heard as Mera, and Billy Crudup as Henry Allen. Additionally, '
              'Joe Manganiello as Slade Wilson / Deathstroke was also introduced in a post-credits '
              'scene, teasing an alliance between him and Lex Luthor. Kiersey Clemons as Iris West '
              'and Willem Dafoe as Nuidis Vulko were to be introduced but their scenes were ultimately '
              'cut from the film.'),
      Movie(
          title: 'Aquaman (2018)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/3/3a/Aquaman_poster.jpg',
          desc: 'Following the events of Justice League, Arthur Curry / '
              'Aquaman must fight to retain the Atlantean throne from opposing threats.'
              '\n\nIn June 2014, Jason Momoa was cast as Arthur Curry / Aquaman. By August, '
              'Will Beall and Kurt Johnstad were writing competing scripts for the character\'s solo '
              'film. Aquaman was announced in October. In June 2015, James Wan was hired as director, '
              'as well as to oversee the screenplay by Johnstad. The film\'s plot takes place after '
              'the events of Justice League. In November 2015, David Leslie Johnson was hired to '
              'write a new script. In July 2016, Beall returned to write the script, based on a '
              'story treatment by Wan and Geoff Johns. In December, Patrick Wilson was cast as Orm / Ocean '
              'Master, the half-brother of Aquaman and the main antagonist of the film. In January 2017, '
              'Yahya Abdul-Mateen II was cast in the role of villain Black Manta. In March, Nicole '
              'Kidman confirmed that she will play Queen Atlanna, Aquaman\'s mother. In April, '
              'Dolph Lundgren was cast as the villain King Nereus. In June, Deadline Hollywood '
              'reported that Johnson had returned to the project to work on a rewrite of Beall\'s script '
              'with Wan and producer Peter Safran. Heard will reprise her role as Mera from Justice '
              'League. Other cast members include Willem Dafoe as Nuidis Vulko, Temuera Morrison as '
              'Aquaman\'s father Tom Curry, and Ludi Lin as Murk, an ally of Aquaman. Principal '
              'photography began on May 2, 2017, in Queensland, Australia, and wrapped on October '
              '21, 2017. Aquaman was released in North America on December 21, 2018.'),
      Movie(
          title: 'Shazam! (2019)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/thumb/6/60/Shazam%21_theatrical_poster.jpg/220px-Shazam%21_theatrical_poster.jpg',
          desc: 'By speaking "Shazam", a 14-year-old foster child, '
              'Billy Batson, can turn into an adult superhero, courtesy of an ancient wizard. He attempts '
              'to master his powers and defeat the evil forces controlled by Dr. Thaddeus Sivana.'
              '\n\nIn August 2014, Dwayne Johnson announced his attachment to a project about the '
              'superhero Shazam, formerly known as Captain Marvel. In September, Johnson was revealed to '
              'be portraying the antihero Black Adam, Shazam\'s nemesis in the film, with Darren Lemke '
              'set to write the script. In October, Warner Bros. announced Shazam as a film in its '
              'upcoming slate. By January 2017, Henry Gayden was working on the script. In July, '
              'David F. Sandberg was confirmed as director. It was also reported that month that, '
              'despite the initial announcement, Dwayne Johnson would not appear as Black Adam in '
              'Shazam!, but will instead star as the character in a solo film. Pre-production began '
              'with the casting process for Shazam\'s child-age alter ego Billy Batson in August. '
              'By October, Zachary Levi was cast as Shazam, and in November, Grace Fulton joined the '
              'cast as Shazam\'s foster sister, Mary Bromfield. Fulton reteamed with the director after '
              'Annabelle: Creation. The film\'s primary villain is Doctor Sivana, with actor Mark Strong'
              ' in the role. Later that month, Asher Angel was cast as Billy Batson. In December, Jack Dylan '
              'Grazer was cast as Frederick "Freddy" Freeman, Batson\'s foster brother and best friend. '
              'Later that month, Jovan Armand, Ian Chen, and Faithe Herman were cast as Batson\'s foster'
              ' siblings Pedro Peña, Eugene Choi, and Darla Dudley respectively, while Cooper Andrews and '
              'Marta Milans portray Billy\'s foster parents. By January 2018, Ron Cephas Jones was in '
              'negotiations to portray the wizard, Shazam, who gives Billy his powers, but was '
              'replaced by Djimon Hounsou due to scheduling conflicts. The film began principal '
              'photography in Toronto on January 29, 2018, and wrapped on May 11, 2018, with most of '
              'the filming taking place at Pinewood Toronto Studios, among other locations around the '
              'city. Shazam! was released in North America on April 5, 2019.'),
    ]);
  }

  List<Movie> _getMarvelMovie() {
    return indexing(<Movie>[
      Movie(
          title: 'Iron Man (2008)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/7/70/Ironmanposter.JPG',
          desc:
              'Billionaire industrialist Tony Stark builds himself a suit of armor after he is '
              'taken captive by a terrorist organization. Free from his captors, he decides to upgrade '
              'and don his armor in order to hunt down weapons that were sold under the table.'
              '\n\nIn April 2006, Marvel hired Jon Favreau to direct Iron Man, with the writing teams of '
              'Art Marcum and Matt Holloway and Mark Fergus and Hawk Ostby writing competing scripts. '
              'Favreau consolidated both into one script, which was then polished by John August. Robert '
              'Downey, Jr. was cast in the title role in September 2006, after growing out a goatee and '
              'working out to convince the filmmakers he was right for the part. Principal photography '
              'began on March 12, 2007, with the first few weeks spent on Stark\'s captivity in '
              'Afghanistan, which was filmed in Inyo County, California. Production also occurred on the '
              'former Hughes Company soundstages in Playa Vista, Los Angeles, California, with additional '
              'filming at Edwards Air Force Base and Caesars Palace in Las Vegas, Nevada. Iron Man '
              'premiered at the Greater Union theater in George Street, Sydney, on April 14, 2008, and '
              'was released internationally on April 30, and in the United States on May 2.'
              '\n\nThe film ends with a post-credits scene featuring Samuel L. Jackson as Nick Fury, '
              'who approaches Stark regarding the \"Avenger Initiative\". Favreau said that he included '
              'the scene as \"a little tip of the hat for the fans...a way to sort of tee up The Avengers.\"'
              ' Jackson was only on set for a day, with a skeleton crew to avoid the news of his cameo '
              'leaking. Captain America\'s shield is also visible in the background of a scene; '
              'it was added by an ILM artist as a joke, and Favreau decided to leave it in the film.'),
      Movie(
          title: 'The Incredible Hulk (2008)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/8/88/The_Incredible_Hulk_poster.jpg',
          desc:
              'After being exposed to gamma radiation that causes him to transform into '
              'the monstrous Hulk, scientist Bruce Banner goes on the run and isolates himself '
              'from his love, Betty Ross. Hunted by the military, Banner seeks to cure himself and '
              'prevent his condition from being weaponized.'
              '\n\nIn January 2006, Marvel reclaimed the film rights for the Hulk character from '
              'Universal Pictures after Universal failed to meet a deadline to develop a '
              'sequel to director Ang Lee\'s 2003 film Hulk. Universal retained distribution rights '
              'for future Hulk films. Instead of moving forward with a sequel, Marvel hired '
              'Louis Leterrier to direct The Incredible Hulk, a reboot. Leterrier initially turned '
              'down the job out of respect for Lee, but later reconsidered and signed on. The script '
              'was written by Zak Penn, who drafted a treatment for the 2003 film. In April 2006, '
              'Edward Norton entered negotiations to portray Bruce Banner and rewrite Penn\'s script, '
              'although Penn received sole credit for the screenplay. Production began on July 9, 2007 '
              'and filming primarily took place in Toronto, with additional filming in New York City '
              'and Rio de Janeiro. The film premiered at the Gibson Amphitheatre on June 8, 2008, and'
              ' was released on June 13.'
              '\n\nThe film takes place simultaneously with the events of Iron Man 2 and Thor, the former '
              'of which is set six months after the events of Iron Man. Downey briefly reprised his role '
              'from Iron Man as Tony Stark in a cameo appearance at the end of the film. Downey '
              'said that the filmmakers "were just cross-pollinating our superheroes. It happens '
              'to be a scene where I basically approach actor William Hurt\'s character General Ross],'
              ' and we may be considering going into some sort of limited partnership together. '
              'The great thing is he—and I don\'t want to give too much away—but he\'s in disrepair at '
              'the time I find him. It was really fun seeing him play this really powerful character who\'s '
              'half in the bag.\" In addition, Captain America is briefly seen frozen in ice in '
              'an alternate opening of the film, included in the DVD release.'),
      Movie(
          title: 'Iron Man 2 (2010)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/e/ed/Iron_Man_2_poster.jpg',
          desc: 'After Tony Stark reveals himself to be Iron Man, '
              'the U.S. government demands he hand over his technology. Meanwhile, a rival industrialist'
              ' and a Russian scientist conspire to use his own technology against him.'
              '\n\nImmediately following the successful release of Iron Man in May 2008, Marvel Studios '
              'announced it was developing a sequel, Iron Man 2. Favreau returned as director and Justin '
              'Theroux was hired to write the screenplay, which would be based on an original story by '
              'Favreau and Downey. In October 2008, Downey signed a new four-picture deal, that '
              'retroactively included the first film, to reprise his role and Don Cheadle was hired to '
              'replace Terrence Howard as James Rhodes. Jackson signed on to reprise his role as Nick '
              'Fury from the Iron Man post-credits sequence in up to nine films, and Scarlett Johansson '
              'was cast as the Black Widow, as part of a multi-film commitment. Principal photography '
              'began April 6, 2009, at the Pasadena Masonic Temple in Pasadena, California. The majority '
              'of filming took place at Raleigh Studios in Manhattan Beach, California. Other locations '
              'included Edwards Air Force Base, Monaco, and the Sepulveda Dam. Iron Man 2 premiered at '
              'the El Capitan Theatre in Los Angeles, California on April 26, 2010, and was released '
              'internationally between April 28 and May 7 before releasing in the United States on May 7.'
              '\n\nThe film is set six months after the events of Iron Man, and takes place simultaneously '
              'with the events of The Incredible Hulk and Thor. The filmmakers continued to refer to other '
              'Marvel films by again including Captain America\'s shield. Favreau explained, "We introduced '
              'Captain America\'s shield briefly in one shot in the last film. So now it really was in his '
              'room, so we had to figure out how to deal with the reality that the shield was in his '
              'workshop." A scene toward the end of Iron Man 2 in a S.H.I.E.L.D. safe house contains '
              'several Easter eggs, ranging from footage from The Incredible Hulk displayed on a monitor '
              'to pointers on a map indicating several locales related to other Marvel films, including '
              'one pointing toward a region of Africa in reference to the Black Panther. A young Peter '
              'Parker appears as the child wearing an Iron Man mask whom Stark saves from a drone; the '
              'appearance was confirmed in June 2017 by Spider-Man actor Tom Holland, Kevin Feige and '
              'Spider-Man: Homecoming director Jon Watts. The film\'s post-credits scene showed the '
              'discovery of Thor\'s hammer in a crater.'),
      Movie(
          title: 'Thor (2011)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/f/fc/Thor_poster.jpg',
          desc: 'Thor, crown prince of Asgard, is banished to Earth and '
              'stripped of his powers after he reignites a dormant war. As his brother, Loki, plots '
              'to take the throne for himself, Thor must prove himself worthy and reclaim his hammer Mjölnir.'
              '\n\nMark Protosevich was hired to develop a script for Thor in April 2006, after the '
              'rights were acquired from Sony Pictures. In August 2007 Marvel hired Matthew Vaughn to '
              'direct the film, however he exited the project in May 2008. In September 2008, Kenneth '
              'Branagh entered into negotiations to replace Vaughn. In May 2009, Chris Hemsworth was in '
              'negotiations to portray the titular character, and Tom Hiddleston was set to play his '
              'brother, Loki. Both actors were contracted to star in several films. Marvel hired the '
              'writing team of Ashley Edward Miller and Zack Stentz to write a new script for the film, '
              'which was then rewritten by Don Payne. Production began on January 11, 2010 in Los Angeles, '
              'California, before moving to Galisteo, New Mexico in March. Thor had its world premiere '
              'on April 17, 2011 at the Event Cinemas theatre in George Street, Sydney and a U.S. premiere '
              'on May 2 at the El Capitan Theatre in Los Angeles, California. The film was released '
              'internationally from April 21 to 30, and on May 6 in the United States.'
              '\n\nThe film takes place simultaneously with the events of The Incredible Hulk and Iron '
              'Man 2, the latter of which is set six months after the events of Iron Man. Clark Gregg, '
              'who appeared in Iron Man and Iron Man 2 as S.H.I.E.L.D. agent Phil Coulson, reprised the '
              'role in Thor. About his role in Thor he stated, "Agent Coulson was one of the guys who '
              'wasn\'t really in the comic books, and he [had] a very kind of small role in Iron Man. '
              'And I was just very lucky that they chose to expand that character and [chose] to put '
              'him more into the universe of it." After signing on to appear as Clint Barton / Hawkeye '
              'in The Avengers, Jeremy Renner made a cameo appearance as the character during a scene '
              'in Thor. Branagh said that they "were always going to have a guy in a basket above the '
              'action where Thor breaks in the S.H.I.E.L.D. camp", and that he was thrilled when the '
              'producers told him they wanted to use Renner\'s Hawkeye for that role. The film ends with '
              'a post-credits scene featuring Loki, watching as Erik Selvig and Nick Fury discuss the '
              'Tesseract. The scene was directed by Joss Whedon, who directed The Avengers. Stellan '
              'Skarsgård, who played Selvig, said the scene was not included when he first read the '
              'screenplay for Thor, and that he was sent pages for the scene after agreeing to appear in The Avengers.'),
      Movie(
          title: 'Captain America: The First Avenger (2011)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/3/37/Captain_America_The_First_Avenger_poster.jpg',
          desc: 'In 1942, Steve Rogers is deemed physically unfit to '
              'enlist in the U.S. Army and fight the German Reich in World War II. Recruited for a secret '
              'military operation, he is physically transformed into a super-soldier dubbed Captain '
              'America and must battle the Red Skull, head of a Nazi science division known as Hydra.'
              '\n\nIn April 2006, Marvel hired David Self to write the script for a Captain America '
              'film. Joe Johnston signed on to direct in November 2008, and Christopher Markus & Stephen '
              'McFeely were hired to rewrite the script. In March 2010, Chris Evans was cast as Captain '
              'America and Hugo Weaving was cast as the Red Skull. Production began on June 28, 2010 in '
              'the United Kingdom, with locations in London, Caerwent, Manchester and Liverpool. The '
              'film premiered on July 19, 2011, at the El Capitan Theatre in Los Angeles, California, '
              'and was released in the United States on July 22, and in international markets starting July 27.'
              '\n\nThe Tesseract from the Thor post-credits scene appears as a MacGuffin in Captain '
              'America: The First Avenger. In the film, Dominic Cooper portrays a young Howard Stark, '
              'the father of Tony Stark, who hosts an early version of the Stark Expo, the fair Tony '
              'hosts in Iron Man 2. The final scene of the film includes a brief appearance by Jackson\'s '
              'Nick Fury followed by a teaser trailer for Marvel\'s The Avengers after the credits.'),
      Movie(
          title: 'Marvel\'s The Avengers (2012)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/f/f9/TheAvengers2012Poster.jpg',
          desc:
              'Nick Fury, the director of S.H.I.E.L.D., gathers the superheroes '
              'Iron Man, Thor, Captain America, the Hulk, Black Widow and Hawkeye to fight Thor\'s brother '
              'Loki, who plots to subjugate the Earth.'
              '\n\nZak Penn, who wrote The Incredible Hulk, was hired to write a script for The Avengers in '
              'June 2007. In April 2010, Joss Whedon closed a deal to direct the film, and to rework Penn\'s'
              ' script. Marvel announced that Edward Norton would not be reprising the role of Bruce '
              'Banner / Hulk, and in July 2010, Mark Ruffalo was cast in his place. Downey, Evans, '
              'Hemsworth, Johansson, Renner, Hiddleston and Jackson reprised their respective roles '
              'from previous films. Principal photography began in April 2011 in Albuquerque, New '
              'Mexico, before moving to Cleveland, Ohio in August, and New York City in September. '
              'The premiere was held on April 11, 2012 at the El Capitan Theatre in Los Angeles, '
              'California, and the film was released in the United States on May 4.'
              '\n\nGwyneth Paltrow, who portrayed Pepper Potts in Iron Man and Iron Man 2, was included in '
              'the film at Downey\'s insistence. Prior to this, Whedon had not intended the film to '
              'include supporting characters from the heroes\' individual films, commenting, "You need to '
              'separate the characters from their support systems in order to create the isolation '
              'you need for a team." Avi Arad said that Sony Pictures and Disney discussed '
              'incorporating the OsCorp Tower from The Amazing Spider-Man into the climax of The '
              'Avengers, but Feige said that "the deal was never close to happening." '
              'The supervillain Thanos appears in a mid-credits scene, portrayed by Damion Poitier.'),
      Movie(
          title: 'Iron Man 3 (2013)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/d/d5/Iron_Man_3_theatrical_poster.jpg',
          desc: 'Tony Stark faces a powerful enemy, the Mandarin, who '
              'attacks and destroys his mansion. Left to his own devices and battling posttraumatic '
              'stress disorder, Stark struggles to get to the bottom of a series of mysterious explosions.'
              '\n\nIn late 2010, Marvel and Disney announced that they were developing a third Iron Man '
              'film. In February 2011, Marvel hired Shane Black to direct Iron Man 3. Black co-wrote the '
              'film\'s script with Drew Pearce. Downey, Paltrow, and Cheadle reprised their roles from '
              'Iron Man 2, while Guy Pearce and Ben Kingsley joined the cast as Aldrich Killian and '
              'Trevor Slattery, respectively. Filming began in May 2012, in North Carolina. Additional '
              'filming took place in southern Florida, China, and Los Angeles. Iron Man 3 premiered at '
              'Le Grand Rex in Paris, France on April 14, 2013 and at the El Capitan Theatre in Los '
              'Angeles, California on April 24. The film was released internationally on April 25, and in '
              'the United States on May 3.'
              '\n\nThe film is set in December 2013, after the events of The Avengers. In the film '
              'Tony Stark experiences PTSD-like symptoms following the Battle of New York in The Avengers. '
              'Black explained, "that\'s an anxiety response to feeling inferior to The Avengers, '
              'but also to being humbled by sights he cannot possibly begin to understand or reconcile '
              'with the realities he\'s used to... There\'s a line in the movie about \'ever since that '
              'big guy with the hammer fell out of the sky, the rules have changed. That\'s what we\'re '
              'dealing with here." Bruce Banner appears in a post-credits scene, with Ruffalo reprising '
              'the role. About the scene, Ruffalo said "They were about to wrap the movie and I saw '
              'Robert [Downey, Jr.] at the Academy Awards... and he said, \'What do you think about '
              'coming and doing a day?\' I said, \'Are you kidding me? Bang, let\'s do it!\' We sort of '
              'spitballed that scene, then I came in and we shot for a couple of hours and laughed."'),
      Movie(
          title: 'Thor: The Dark World (2013)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/7/7e/Thor_-_The_Dark_World_poster.jpg',
          desc: 'Thor reunites with astrophysicist Jane '
              'Foster as a series of portals, linking worlds at random, begin to appear. He discovers '
              'that Malekith and his army of Dark Elves have returned after thousands of years, and they '
              'seek a powerful weapon known as the Aether. Thor must join forces with his now-imprisoned '
              'brother Loki to stop them.'
              '\n\nA sequel to Thor was first announced in June 2011, with Hemsworth reprising his '
              'role as Thor. Hiddleston confirmed he would return as Loki in September, and Alan Taylor '
              'signed on to direct the film in December. The film\'s title was announced as Thor: '
              'The Dark World in July 2012 at the San Diego Comic-Con International, and Christopher '
              'Eccleston was cast as Malekith a month later. Production started in September 2012 in '
              'Bourne Wood, Surrey, with additional filming taking place in Iceland and London. The film '
              'premiered at the Odeon Leicester Square in London on October 22, 2013. It was '
              'internationally released on October 30, 2013 and on November 8, 2013 in the United States.'
              '\n\nThe film is set one year after the events of The Avengers. Evans briefly makes a '
              'cameo appearance in the film as Captain America when Loki shapeshifts into him while '
              'mocking Thor. Hiddleston wore the Captain America costume while standing in for Evans, '
              'before Evans came to shoot the scene. Hiddleston said, "I did an impression of Loki '
              'in the Captain America costume, and then they showed Chris [Evans] my performance on '
              'tape. It\'s him doing an impression of me doing an impression of him. And it\'s brilliant." '
              'James Gunn, the director of Guardians of the Galaxy, directed the mid-credits scene that '
              'featured the Collector, played by Benicio del Toro. Asked about shooting the scene, Gunn '
              'said, "I got the script that morning, and I did it in two hours at the end of a day of '
              'second unit shooting [for Guardians of the Galaxy]."'),
      Movie(
          title: 'Captain America: The Winter Soldier (2014)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/e/e8/Captain_America_The_Winter_Soldier.jpg',
          desc: 'Steve Rogers, now working '
              'with S.H.I.E.L.D., teams up with Natasha Romanoff / Black Widow and Sam Wilson / Falcon to '
              'expose a deep conspiracy which involves a mysterious assassin known only as the Winter Soldier.'
              '\n\nA sequel to 2011\'s Captain America: The First Avenger was announced in April 2012. '
              'Anthony and Joe Russo were hired to direct in June, and in July it was officially titled '
              'Captain America: The Winter Soldier. Evans and Jackson were set to reprise their respective '
              'roles as Captain America and Nick Fury, and Johansson would again play the Black Widow. '
              'Sebastian Stan, who portrayed Bucky Barnes in Captain America: The First Avenger, '
              'returned as the Winter Soldier. Production started in April 2013 in Manhattan Beach, '
              'California, and filming also took place in Washington, D.C. and Cleveland, Ohio. The '
              'film premiered in Los Angeles on March 13, 2014. Captain America: The Winter Soldier '
              'was released internationally on March 26 and in the United States on April 4.'
              '\n\nThe film is set two years after the events of The Avengers. Stephen Strange, the alter-ego '
              'of the Marvel superhero Doctor Strange, is mentioned by name in the film by the character '
              'Jasper Sitwell. A remodeled Stark Tower from The Avengers, now known as Avengers Tower, '
              'also makes an appearance in the film. Whedon directed a post-credits scene featuring Baron '
              'Wolfgang von Strucker (Thomas Kretschmann), List (Henry Goodman), Quicksilver (Aaron '
              'Taylor-Johnson), and the Scarlet Witch (Elizabeth Olsen), who appear in Avengers: Age '
              'of Ultron. The revelation in the film that S.H.I.E.L.D. had been infiltrated by Hydra '
              'informed the final six episodes of the first season of Agents of S.H.I.E.L.D., a '
              'television series set in the MCU.'),
      Movie(
          title: 'Guardians of the Galaxy (2014)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/b/b5/Guardians_of_the_Galaxy_poster.jpg',
          desc: 'Peter Quill / Star-Lord and a group '
              'of misfits, including Gamora, Rocket, Drax the Destroyer and Groot, fight to keep a '
              'powerful orb from the clutches of the villainous Ronan.'
              '\n\nNicole Perlman began writing a screenplay in 2009. Marvel Studios announced '
              'it was developing a Guardians of the Galaxy film in July 2012. The film is directed '
              'by James Gunn, based on his and Perlman\'s screenplay. In February 2013, Chris Pratt was '
              'cast in the lead role, as Peter Quill / Star-Lord. The film was shot at Shepperton '
              'Studios and in London from July to October 2013, and post-production work was completed '
              'on July 7, 2014. The film premiered on July 21, 2014 in Hollywood. Guardians of the Galaxy '
              'was released in the United Kingdom on July 31, 2014, and in the United States on August 1.'
              '\n\nThe film is set in 2014. Josh Brolin provides the voice and performance capture '
              'for Thanos, the supervillain who appeared in The Avengers mid-credits scene. Gunn noted '
              'that the film would be connected to Avengers: Infinity War. Several other objects of '
              'significance appear in the Collector\'s museum, including a Chitauri from The Avengers '
              'and a Dark Elf from Thor: The Dark World, among other characters. About their appearances '
              'Gunn said, "There\'s a lot of stuff in the Collector\'s Museum. And for me, it was mostly '
              'just really fun. As a Marvel fan, giving the actual fans something that they can freeze '
              'frame on their Blu-Ray at home and just kind of pick out everything that\'s in there. '
              'So there are, I mean, seriously all those boxes have something interesting in them, so '
              'it\'s pretty fun." Ronan\'s race, the Kree, were first introduced in the Agents of '
              'S.H.I.E.L.D. episode "T.A.H.I.T.I.".'),
      Movie(
          title: 'Avengers: Age of Ultron (2015)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/f/ff/Avengers_Age_of_Ultron_poster.jpg',
          desc: 'Captain America, Iron Man, Thor, the Hulk, Black Widow, '
              'and Hawkeye must work together as the Avengers to defeat Ultron, a technological enemy bent '
              'on human extinction, while encountering the powerful twins Pietro and Wanda Maximoff, '
              'as well as the new entity Vision.'
              '\n\nA sequel to The Avengers was announced by Disney in May 2012, shortly after the first '
              'film\'s release. In August 2012, Joss Whedon was signed to return as writer and director. '
              'In June 2013, Downey signed a deal to reprise the role of Iron Man for the second and '
              'third Avengers films. On July 20, 2013, at San Diego Comic-Con International, Whedon '
              'announced that the subtitle of the film would be Age of Ultron. In August 2013, James '
              'Spader was announced to portray Ultron. Second unit filming began on February 11, 2014 '
              'in Johannesburg, South Africa. Principal photography began in March 2014 at Shepperton '
              'Studios in Surrey, England, with additional footage filmed at Fort Bard and various other '
              'locations in the Aosta Valley region of Italy, and Seoul, South Korea. Filming was completed '
              'on August 6, 2014. Avengers: Age of Ultron had its world premiere in Los Angeles on April '
              '13, 2015, and was released internationally beginning April 22, and on May 1 in the United States.'
              '\n\nThe film confirms that the gem in Loki\'s scepter is an Infinity Stone, '
              'specifically the Mind Stone, and Brolin reappears as Thanos in the mid-credits scene '
              'wielding an Infinity Gauntlet. It also features references to Vibranium and Wakanda, '
              'both connections to Black Panther, introducing both to the universe ahead of Black Panther\'s '
              'solo film. Additionally, Andy Serkis portrays Ulysses Klaue in the film, traditionally a '
              'Black Panther antagonist, and would subsequently appear in Black Panther.'),
      Movie(
          title: 'Ant-Man (2015)',
          imagePath:
              'https://upload.wikimedia.org/wikipedia/en/7/75/Ant-Man_poster.jpg',
          desc: 'Thief Scott Lang must aid his mentor Dr. Hank Pym in '
              'safeguarding the mystery of the Ant-Man technology, which allows its user to decrease '
              'in size but increase in strength, from various menaces and plot a heist to defend the Earth.'
              '\n\nAnt-Man is directed by Peyton Reed with a screenplay written by Edgar Wright & Joe Cornish '
              'and Adam McKay & Paul Rudd, from a story by Wright & Cornish, that includes both Scott '
              'Lang and Hank Pym. Edgar Wright was initially slated to direct and write the film, but '
              'left the project in May 2014 due to creative differences. In January 2013, Feige stated '
              'that Ant-Man would be the first film in Phase Three of the Marvel Cinematic Universe. '
              'However, in October 2014, it was revealed that the film would be the last film of Phase '
              'Two. Pre-production started in October 2013, and principal photography took place from '
              'August to December 2014, in San Francisco, Fayette County, Georgia at Pinewood Atlanta, '
              'and Downtown Atlanta. In December 2013, Rudd was cast as Ant-Man, followed in January '
              '2014 with the casting of Michael Douglas as Pym and the confirmation of Rudd as Lang. '
              'Ant-Man had its world premiere in Los Angeles on June 29, 2015, and was released in '
              'France on July 14, and in the United States on July 17.'
              '\n\nThe film is set several months after the events of Avengers: Age of Ultron. Scott Lang '
              'attempts to infiltrate the new Avengers headquarters in Upstate New York featured '
              'in Age of Ultron, and confronts Sam Wilson / Falcon, played by Anthony Mackie. '
              'McKay and Rudd decided to add Falcon to Ant-Man after watching Captain America: '
              'The Winter Soldier. The Russo brothers filmed the post-credit scene, which was '
              'footage from Captain America: Civil War, and features Mackie as Falcon, Chris Evans '
              'as Steve Rogers / Captain America, and Sebastian Stan as Bucky Barnes / Winter Soldier.'),
    ]);
  }
}

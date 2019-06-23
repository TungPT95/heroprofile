import 'package:hero_profile/models/comic.dart';
import 'package:hero_profile/repository/base/repository.dart';

class ComicsRepos extends Repository {
  Future<List<Comic>> getComics() {
    var list = indexing(<Comic>[
      Comic(
          title: 'DC Comics',
          desc: 'DC Comics, Inc. is an American comic book publisher. '
              'It is the publishing unit of DC Entertainment, '
              'a subsidiary of Warner Bros. since 1967',
          imgPath: 'https://images-na.ssl-images-amazon.com/images/'
              'S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg'),
      Comic(
          title: 'Marvel Comics',
          desc:
              'Marvel Comics is the brand name and primary imprint of Marvel Worldwide Inc.,'
              ' formerly Marvel Publishing, Inc. and Marvel Comics Group, '
              'a publisher of American comic books and related media',
          imgPath: 'https://cdn.europosters.eu/image/1300/calendar'
              '/marvel-comics-classics-i49493.jpg'),
      Comic(
          title: 'DC Entertainment',
          desc: 'DC Comics, Inc. is an American comic book publisher. '
              'It is the publishing unit of DC Entertainment, '
              'a subsidiary of Warner Bros. since 1967',
          imgPath: 'https://images-na.ssl-images-amazon.com/images/'
              'S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg'),
      Comic(
          title: 'Marvel Entertainment',
          desc:
              'Marvel Comics is the brand name and primary imprint of Marvel Worldwide Inc.,'
              ' formerly Marvel Publishing, Inc. and Marvel Comics Group, '
              'a publisher of American comic books and related media',
          imgPath: 'https://cdn.europosters.eu/image/1300/calendar'
              '/marvel-comics-classics-i49493.jpg'),
      Comic(
          title: 'DC Entertainment',
          desc: 'DC Comics, Inc. is an American comic book publisher. '
              'It is the publishing unit of DC Entertainment, '
              'a subsidiary of Warner Bros. since 1967',
          imgPath: 'https://images-na.ssl-images-amazon.com/images/'
              'S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg'),
      Comic(
          title: 'Marvel Entertainment',
          desc:
              'Marvel Comics is the brand name and primary imprint of Marvel Worldwide Inc.,'
              ' formerly Marvel Publishing, Inc. and Marvel Comics Group, '
              'a publisher of American comic books and related media',
          imgPath: 'https://cdn.europosters.eu/image/1300/calendar'
              '/marvel-comics-classics-i49493.jpg'),
    ]);
    return returnData<List<Comic>>(list);
  }
}

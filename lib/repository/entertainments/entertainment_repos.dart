import 'package:hero_profile/models/entertainment.dart';
import 'package:hero_profile/repository/base/repository.dart';

class EntertainmentsRepos extends Repository {
  Future<List<Entertainment>> getEntertainments() {
    var list = indexing(<Entertainment>[
      Entertainment(
          title: 'DC Entertainment',
          imgPath: 'https://images-na.ssl-images-amazon.com/images/'
              'S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg'),
      Entertainment(
          title: 'Marvel Entertainment',
          imgPath: 'https://cdn.europosters.eu/image/1300/calendar'
              '/marvel-comics-classics-i49493.jpg'),
      Entertainment(
          title: 'DC Entertainment',
          imgPath: 'https://images-na.ssl-images-amazon.com/images/'
              'S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg'),
      Entertainment(
          title: 'Marvel Entertainment',
          imgPath: 'https://cdn.europosters.eu/image/1300/calendar'
              '/marvel-comics-classics-i49493.jpg'),
      Entertainment(
          title: 'DC Entertainment',
          imgPath: 'https://images-na.ssl-images-amazon.com/images/'
              'S/cmx-images-prod/Item/332255/332255._SX1280_QL80_TTD_.jpg'),
      Entertainment(
          title: 'Marvel Entertainment',
          imgPath: 'https://cdn.europosters.eu/image/1300/calendar'
              '/marvel-comics-classics-i49493.jpg'),
    ]);
    return returnData<List<Entertainment>>(list);
  }
}

import 'package:avenger_information/models/feats_info.dart';
import 'package:avenger_information/models/information.dart';

abstract class Repository {
  indexing(List list) {
    for (dynamic item in list) {
      if (item is Information) {
        item.id = list.indexOf(item);
      } else if (item is FeatsInfo) {
        item.id = list.indexOf(item);
      }
    }
    return list;
  }

  Future<T> returnData<T>(T data) {
    return Future.delayed(const Duration(seconds: 1), () => data);
  }
}

import 'package:hero_profile/repository/base/repository.dart';
import 'package:meta/meta.dart';

class Character {
  int id;
  String name;
  String avatar;
  String appBarBg;
  String drawerBg;
  String series;
  String sex;
  String alignment;
  Repository repository;

  Character(
      {@required this.name,
      this.id = -1,
      this.avatar = '',
      this.appBarBg = '',
      this.drawerBg = '',
      this.series = 'N/A',
      this.sex = 'N/A',
      this.alignment = 'N/A',
      this.repository})
      : assert(name != null, "name is required");
}

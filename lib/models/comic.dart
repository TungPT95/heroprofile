class Comic {
  int id;
  String title;
  String desc;
  String imgPath;

  Comic({this.id, this.title, this.desc, this.imgPath})
      : assert(title != null && desc != null);
}

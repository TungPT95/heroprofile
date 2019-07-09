class Comic {
  int id;
  String title;
  String shortDesc;
  String imgPath;
  String fullDesc;

  Comic({this.id, this.title, this.shortDesc, this.imgPath, this.fullDesc = ''})
      : assert(title != null && shortDesc != null && fullDesc != null);
}

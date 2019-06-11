class Information {
  int id;
  String title;
  String description;
  List<Information> subInformation = [];

  Information(
      {this.id, this.title = '', this.description = '', this.subInformation})
      : assert(title != null),
        assert(description != null);
}

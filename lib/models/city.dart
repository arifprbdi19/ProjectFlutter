class City {
  int id;
  String name;
  String image;
  bool isFavorite;

  City({
    required this.id,
    required this.name,
    required this.image,
    this.isFavorite = false,
  });
}

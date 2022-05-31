class Space {
  late int id;
  late String image;
  late String name;
  late int price;
  late String city;
  late int rating;
  late String country;
  late String address;
  late String phone;
  late String map;
  late List photos;
  late int kitchens;
  late int bedrooms;
  late int cupboards;

  Space(
      {required this.city,
      required this.rating,
      required this.name,
      required this.image,
      required this.price,
      required this.id,
      required this.address,
      required this.bedrooms,
      required this.country,
      required this.cupboards,
      required this.kitchens,
      required this.map,
      required this.phone,
      required this.photos});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    image = json['image_url'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    photos = json['photos'];
    map = json['map_url'];
    kitchens = json['number_of_kitchens'];
    bedrooms = json['number_of_bedrooms'];
    cupboards = json['number_of_cupboards'];
  }
}

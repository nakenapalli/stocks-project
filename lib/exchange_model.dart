class Exchange {
  final String id;
  final String name;
  final int year;
  final String country;
  final String image;

  Exchange({this.id, this.name, this.year, this.country, this.image});

  factory Exchange.fromJson(Map<String, dynamic> json) {
    return Exchange(
      id: json['id'],
      name: json['name'],
      year: json['year_established'],
      country: json['country'],
      image: json['image'],
    );
  }
}

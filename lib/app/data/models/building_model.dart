class Building {
  String? district;
  String? name;

  Building({this.district, this.name});

  factory Building.fromJson(Map<String, dynamic> json) {
    return Building(
      district: json[''],
      name: json[''],
    );
  }
}

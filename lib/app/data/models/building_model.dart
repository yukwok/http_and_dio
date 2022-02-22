import 'package:json_annotation/json_annotation.dart';

part 'building_model.g.dart';

@JsonSerializable()
class Building {
  final String district, name;
  final DateTime dateOfBirth;

  const Building(
      {required this.district, required this.name, required this.dateOfBirth});

  factory Building.fromJson(Map<String, dynamic> json) =>
      _$BuildingFromJson(json);

  Map<String, dynamic> toJson() => _$BuildingToJson(this);
}

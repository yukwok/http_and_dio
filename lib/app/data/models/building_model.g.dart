// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Building _$BuildingFromJson(Map<String, dynamic> json) => Building(
      district: json['district'] as String,
      name: json['name'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
    );

Map<String, dynamic> _$BuildingToJson(Building instance) => <String, dynamic>{
      'district': instance.district,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
    };

// import 'package:json_annotation/json_annotation.dart";

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Article {
  final String title;
  final String author;

  final String description;

  final String url;

  final String urlToImage;

  final String content;

  final String publishedAt;

  DateTime get getPublishAtDate => DateTime.tryParse(publishedAt);
}

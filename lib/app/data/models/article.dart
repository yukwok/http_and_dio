import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  final String title;
  final String author;

  final String description;

  final String url;

  final String urlToImage;

  final String content;

  final String publishedAt;

  const Article({
    required this.title,
    required this.description,
    required this.author,
    required this.content,
    required this.publishedAt,
    required this.url,
    required this.urlToImage,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  // DateTime get getPublishAtDate => DateTime.tryParse(publishedAt);
}

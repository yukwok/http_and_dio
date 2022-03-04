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

  Article({
    this.title = "no title",
    this.description = "no description",
    this.author = "no author",
    this.content = " no content",
    this.publishedAt = "no date",
    this.url = 'no url',
    this.urlToImage = 'no urlToImage',
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  // DateTime get getPublishAtDate => DateTime.tryParse(publishedAt);
}

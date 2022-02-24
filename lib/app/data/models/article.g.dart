// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      title: json['title'] as String? ?? "no title",
      description: json['description'] as String? ?? "no description",
      author: json['author'] as String? ?? "no auth",
      content: json['content'] as String? ?? " no content",
      publishedAt: json['publishedAt'] as String? ?? "no date",
      url: json['url'] as String? ?? 'no url',
      urlToImage: json['urlToImage'] as String? ?? 'no urlToImage',
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
      'publishedAt': instance.publishedAt,
    };

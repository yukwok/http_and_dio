// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] as String,
      content: json['content'] as String,
      publishedAt: json['publishedAt'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
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

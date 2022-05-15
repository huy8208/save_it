import 'package:news_api_flutter_package/model/source.dart';

class NewsModel {
  NewsModel(
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  );

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      Source.fromJson(json['source'] as Map<String, dynamic>),
      json['author'] as String,
      json['title'] as String,
      json['description'] as String,
      json['url'] as String,
      json['urlToImage'] as String,
      json['publishedAt'] as String,
      json['content'] as String,
    );
  }

  late Source source;
  late String? author;
  late String? title;
  late String? description;
  late String? url;
  late String? urlToImage;
  late String? publishedAt;
  late String? content;
}

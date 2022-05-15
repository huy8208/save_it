class Source {
  Source(
    this.id,
    this.name,
    this.description,
    this.url,
    this.category,
    this.language,
    this.country,
  );

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      json['id'] as String,
      json['name'] as String,
      json['description'] as String,
      json['url'] as String,
      json['category'] as String,
      json['language'] as String,
      json['country'] as String,
    );
  }

  late String? id;
  late String name;
  late String description;
  late String url;
  late String category;
  late String language;
  late String country;
}

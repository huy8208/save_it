class MyModel {
  MyModel({
    required this.id,
    required this.title,
    required this.body,
  });

  MyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    body = json['body'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = title;
    data['body'] = body;
    return data;
  }

  late int id;
  late String title;
  late String body;
}

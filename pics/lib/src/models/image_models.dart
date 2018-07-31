import 'dart:convert';

class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(String rawJson) {
    final parsedJson = json.decode(rawJson);
    this.id = parsedJson['id'];
    this.url = parsedJson['url'];
    this.title = parsedJson['title'];
  }
}
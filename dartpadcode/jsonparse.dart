import 'dart:convert';

void main() {
  final singleImage = ImageModel.fromJson('{"url": "http://blah.jpg", "id": 1}');
  
  print(singleImage);
  print(singleImage.id);
  print(singleImage.url);
}

class ImageModel {
  int id;
  String url;
  
  ImageModel(this.id, this.url);
  
  ImageModel.fromJson(String rawJson) {
    final parsedJson = json.decode(rawJson);
    this.id = parsedJson['id'];
    this.url = parsedJson['url'];
  }
  
  String toString() {
    return "$id -> $url";
  }
}


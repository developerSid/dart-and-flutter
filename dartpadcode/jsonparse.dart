
import 'dart:convert';

void main() {
  final rawJson = '{"url": "http://blah.jpg", "id": 1}';
  final parsedJson = json.decode(rawJson);
  final singleImage = ImageModel(parsedJson['id'], parsedJson['url']);
  
  print(singleImage);
  print(singleImage.id);
  print(singleImage.url);
}

class ImageModel {
  int id;
  String url;
  
  ImageModel(this.id, this.url);
  
  String toString() {
    return "$id -> $url";
  }
}


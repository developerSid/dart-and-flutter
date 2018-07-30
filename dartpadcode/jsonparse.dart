import 'dart:convert';

void main() {
  final rawJson = '{"url": "http://blah.jpg", "id": 1}';
  final parsedJson = json.decode(rawJson);
  
  print(parsedJson['url']);
}

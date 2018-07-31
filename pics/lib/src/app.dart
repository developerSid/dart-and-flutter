import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pics/src/models/image_models.dart';


class App extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;
  List<ImageModel> images = [];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text("Let's see some images")
          ),
          body: Text("$counter"),
          floatingActionButton: FloatingActionButton(
              child: Icon(
                  Icons.add
              ),
              onPressed: fetchImage
          ),
        )
    );
  }

  void fetchImage() async {
    final response = await get('https://jsonplaceholder.typicode.com/photos/${counter++}');
    final imageModel = ImageModel.fromJson(response.body);

    setState(() {
      images.add(imageModel);
    });
  }
}

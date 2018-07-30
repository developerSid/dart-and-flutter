import 'package:flutter/material.dart';


class App extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  }


}

class AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text("Let's see some images")
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(
                  Icons.add
              ),
              onPressed: () {
                print('Hi there!');
              }
          ),
        )
    );
  }

}

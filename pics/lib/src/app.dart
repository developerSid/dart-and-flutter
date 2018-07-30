// import flutter helper library
import 'package:flutter/material.dart';


// create a class that will be our custom widget
// this class must extend the `StatelessWidget` base class
class App extends StatelessWidget {
  // must define a build method that returns
  // the widgets that this widget will show

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

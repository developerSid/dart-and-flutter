import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screens.dart';

class App extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return MaterialApp(
         title: "Log Me In",
         home: Scaffold(
            body: LoginScreen(),
         ),
      );
   }
}
import 'package:flutter/material.dart';

import 'screen/main_screen.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fast Food App",
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: MainScreen(),
    );
  }

}
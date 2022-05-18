import 'package:flutter/material.dart';
import 'package:unimeals/view/pages/aboutPage.dart';
import 'package:unimeals/view/pages/mainPage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniMeals App',
      home: MainPage(),
      //home: AboutPage(),
    );
  }
}

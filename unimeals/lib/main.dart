import 'package:flutter/material.dart';
import 'package:unimeals/view/pages/AboutPage.dart';
import 'package:unimeals/view/pages/MainPage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniMeals App',
      home: RestaurantsListScreen(),
      //home: AboutPage(),
    );
  }
}

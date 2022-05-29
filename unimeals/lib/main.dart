import 'package:flutter/material.dart';
import 'package:unimeals/view/pages/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniMeals App',
      home: MainPage(),
    );
  }
}
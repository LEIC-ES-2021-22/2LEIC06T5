import 'package:flutter/material.dart';
import 'package:unimeals/view/pages/aboutPage.dart';
import 'package:unimeals/view/pages/mainPage.dart';
import 'package:unimeals/view/pages/menusPage.dart';
import 'package:unimeals/view/widgets/googleMaps.dart';
import 'package:unimeals/model/restaurants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Restaurant restaurant =  Restaurant(
    name: 'Grill',
    imageUrl: 'assets/images/grill_feup.jpeg',
    lat: 41.17638279844958,
    long: -8.595226285289137,
    rating: 94,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniMeals App',
      home: MainPage(),
      //menusPage(restaurant),
      //MapSample(),
      //MainPage(),
    );
  }
}
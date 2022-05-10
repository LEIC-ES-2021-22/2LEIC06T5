import 'package:flutter/material.dart';
import 'package:unimeals/model/data/restaurants.dart';

List<String> listImages = [
  "assets/cafetaria_restaurante.jpeg",
  "assets/cantina_feup.jpeg",
  "assets/grill_feup.jpeg",
  "inegi.jpeg"
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UniMeals"),
        backgroundColor: Color(0xFF8C2D19),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/cantina_feup.jpeg'), width: 300, height: 300,
        )
      ),
    );
  }
}
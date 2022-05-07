import 'package:flutter/material.dart';

class Restaurant {
  int id;
  String name;

  Restaurant(this.id, this.name) {
    this.id = id;
    this.name = name;
  }
}

Restaurant res0 = Restaurant(0,'Cantina FEUP');
Restaurant res1 = Restaurant(1,'Grill');
Restaurant res2 = Restaurant(2,'Cafetaria - Restaurante FEUP');
Restaurant res3 = Restaurant(3,'Restaurante do INEGI');

//List<String> restaurantsnames = ['Cantina FEUP','Grill','Cafetaria - Restaurante FEUP','Restaurante do INEGI'];
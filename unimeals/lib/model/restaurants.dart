import 'package:flutter/material.dart';

class Restaurant {
  /*int id;*/
  String name;
  String imageUrl;
  String location;
  int rating;   // Depois passar rating para num
  /*Map <String, List<Dish>> menu*/

  Restaurant(
    {this.name = "Grill",
    this.imageUrl = 'https://sigarra.up.pt/sasup/en/imagens/SC-alimentacao-cantina-engenharia.jpg',
    this.location = 'Algures Feup',
    this.rating = 94
    });

}

List<Restaurant> restaurantList = [
  Restaurant(
    name: 'Grill',
    imageUrl: 'assets/images/grill_feup.jpeg',
    location: 'Algures Feup' ,
    rating: 94,
  ),
  Restaurant(
    name: 'Cafetaria - Restaurante Feup',
    imageUrl: 'assets/images/cafetaria_restaurante.jpeg',
    location: 'Algures Feup',
    rating: 33,
  ),
  Restaurant(
    name: 'Restaurante do INEGI',
    imageUrl: 'assets/images/inegi.jpeg',
    location: 'Algures Feup' ,
    rating: 80,
  ),
  Restaurant(
    name: 'Cantina - Almoço',
    imageUrl: 'assets/images/cantina_feup.jpeg',
    location: 'Algures Feup' ,
    rating: 29,
  ),
  Restaurant(
    name: 'Cantina - Jantar',
    imageUrl: 'assets/images/cantina_feup.jpeg',
    location: 'Algures Feup' ,
    rating: 42,
  ),
  Restaurant(
    name: 'Bar INESC TEC',
    imageUrl: 'assets/images/inesctecExterior.jpeg',
    location: 'Algures Feup' ,
    rating: 26,
  ),
];
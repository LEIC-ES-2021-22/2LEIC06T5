import 'package:flutter/material.dart';

class Restaurant {
  /*int id;*/
  String name;
  String imageUrl;
  double lat;
  double long;
  int rating;
  /*Map <String, List<Dish>> menu*/

  Restaurant(
    {
    this.name = '',
    this.imageUrl = '',
    this.lat = 0.00000000000000000,
    this.long = 0.0000000000000000,
    this.rating = 0
    });
}

List<Restaurant> restaurantList = [
  Restaurant(
    name: 'Grill',
    imageUrl: 'assets/images/grill_feup.jpeg',
    lat: 41.17638279844958,
    long: -8.595226285289137,
    rating: 94,
  ),
  Restaurant(
    name: 'Cafetaria - Restaurante FEUP',
    imageUrl: 'assets/images/cafetaria_restaurante.jpeg',
    lat: 41.17854340545968,
    long: -8.597440758738738,
    rating: 33,
  ),
  Restaurant(
    name: 'Restaurante do INEGI',
    imageUrl: 'assets/images/inegiExterior.jpg',
    lat: 41.17934975597032,
    long: -8.594378529295387,
    rating: 80,
  ),
  Restaurant(
    name: 'Cantina - Almoço',
    imageUrl: 'assets/images/cantina_feup.jpeg',
    lat: 41.176299520335974,
    long: -8.59549249453409,
    rating: 29,
  ),
  Restaurant(
    name: 'Cantina - Jantar',
    imageUrl: 'assets/images/cantina_feup.jpeg',
    lat: 41.176299520335974,
    long: -8.59549249453409,
    rating: 42,
  ),
  Restaurant(
    name: 'Bar INESC TEC',
    imageUrl: 'assets/images/inesctecExterior.jpeg',
    lat: 41.1793925865339,
    long: -8.59540155399247,
    rating: 29,
  )
];
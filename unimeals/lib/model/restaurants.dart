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
    imageUrl: 'https://noticias.up.pt/wp-content/uploads/2015/04/Grill_630x330.jpg',
    location: 'Algures Feup' ,
    rating: 94,
  ),
  Restaurant(
    name: 'Cafetaria - Restaurante Feup',
    imageUrl: 'https://10619-2.s.cdn12.com/rests/original/801_76744147.jpg',
    location: 'Algures Feup',
    rating: 33,
  ),
  Restaurant(
    name: 'Restaurante do INEGI',
    imageUrl: 'https://img.restaurantguru.com/r692-Restaurante-INEGI-meals.jpg',
    location: 'Algures Feup' ,
    rating: 80,
  ),
  Restaurant(
    name: 'Cantina - Almoço',
    imageUrl: 'https://sigarra.up.pt/sasup/en/imagens/SC-alimentacao-cantina-engenharia.jpg',
    location: 'Algures Feup' ,
    rating: 29,
  ),
  Restaurant(
    name: 'Cantina - Jantar',
    imageUrl: 'https://sigarra.up.pt/sasup/en/imagens/SC-alimentacao-cantina-engenharia.jpg',
    location: 'Algures Feup' ,
    rating: 29,
  ),
  Restaurant(
    name: 'Bar INESC TEC',
    imageUrl: 'https://sigarra.up.pt/feup/pt/WEB_GESSI_DOCS.download_file?p_name=F962267673/Grill.jpg',
    location: 'Algures Feup' ,
    rating: 29,
  )
];




/* The one in the branch testingViews
  static Restaurant generateRestaurant(){
    return Restaurant('Grill',
          'assets/images/grill_feup.jpeg',
          'Algures Feup',
          '20%',
          {
            'Menu': Dish.generateDishesGrill()
          });*/


  /*static List<Restaurant> generateRestaurant(){
    return [
      Restaurant('Grill',
          'assets/images/grill_feup.jpeg',
          'Algures Feup',
          '80%',
          {
            'Menu': Dish.generateDishesGrill()
          }),
      Restaurant('Grill',
          'assets/images/grill_feup.jpeg',
          'Algures Feup',
          '20%',
          {
            'Menu': Dish.generateDishesCantina()
          }),
    ];
  }*/




/*Restaurant res0 = Restaurant(0,'Cantina FEUP');
Restaurant res1 = Restaurant(1,'Grill');
Restaurant res2 = Restaurant(2,'Cafetaria - Restaurante FEUP');
Restaurant res3 = Restaurant(3,'Restaurante do INEGI');
*/
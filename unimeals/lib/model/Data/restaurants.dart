import 'package:flutter/material.dart';

import 'dish.dart';

class Restaurant {
  /*int id;*/
  String name;
  String imgUrl;
  String location;
  String rating;   // Depois passar rating para num
  Map <String, List<Dish>> menu;

  Restaurant(this.name,
      this.imgUrl,
      this.location,
      this.rating,
      this.menu);

  static Restaurant generateRestaurant(){
    return Restaurant('Grill',
          'assets/images/grill_feup.jpeg',
          'Algures Feup',
          '20%',
          {
            'Menu': Dish.generateDishesGrill()
          });
  }

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

  }


/*Restaurant res0 = Restaurant(0,'Cantina FEUP');
Restaurant res1 = Restaurant(1,'Grill');
Restaurant res2 = Restaurant(2,'Cafetaria - Restaurante FEUP');
Restaurant res3 = Restaurant(3,'Restaurante do INEGI');
*/
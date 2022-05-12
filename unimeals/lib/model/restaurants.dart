import 'package:flutter/material.dart';

import 'dish.dart';

class Restaurant {
  /*int id;*/
  String name;
  String imgUrl;
  String location;
  String rating;   // Depois passar rating para num
  /*Map <String, List<Dish>> menu*/;

  Restaurant({
    this.name,
    this.imgUrl,
    this.location,
    this.rating
  /*,
      this.menu*/);
}

}

List<Restaurant> restaurantList = [
  Restaurant(
    name: 'Grill',
    imgUrl: 'assets/images/grill_feup.jpeg'
    location: 'Algures Feup' ,
    rating: '20%',
  ),
  Restaurant(
    title: 'Jumanji',
    description:
    'In Jumanji: The Next Level, the gang is back but the game has changed.',
    year: 2019,
    imageUrl: 'https://i.ytimg.com/vi/MJuFdpVCcsY/movieposter_en.jpg'),
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

  }


/*Restaurant res0 = Restaurant(0,'Cantina FEUP');
Restaurant res1 = Restaurant(1,'Grill');
Restaurant res2 = Restaurant(2,'Cafetaria - Restaurante FEUP');
Restaurant res3 = Restaurant(3,'Restaurante do INEGI');
*/
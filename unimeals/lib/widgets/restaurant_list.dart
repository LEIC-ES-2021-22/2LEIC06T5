import 'package:flutter/material.dart';
import 'package:unimeals/model/Data/restaurants.dart';

class RestaurantInfo extends StatelessWidget {

  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column( children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurant.name,
                style: font,),
                SizedBox(height: 10),
                Row( children: [
                  Text(restaurant.location),
                  Text(restaurant.rating), // Depois passar rating para num
                ],

                )
              ],
            )
          ],
        )
      ],

      ),
    );
  }
}

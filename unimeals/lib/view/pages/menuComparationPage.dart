import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:unimeals/controller/restaurantApi.dart';
import 'package:unimeals/model/newRestaurantsJson.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';
import 'package:http/http.dart' as http;


const ementaUrl = 'https://sigarra.up.pt/feup/pt/mob_eme_geral.cantinas';


class MenuComparationPage extends StatelessWidget {
  @override

  Future<Map<String, dynamic>> getRestaurantName() async {
    var response = await http.get(Uri.parse(ementaUrl));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
        var restaurantName = data[0]["codigo"];
      return restaurantName;
    } else {
      throw Exception('Failed to read $ementaUrl');
    }
  }



  Widget build(BuildContext context) {
    return Scaffold(
        drawer: navbarDrawer(),
        appBar: AppBar(
          title: Text('UniMeals'),
          backgroundColor: Color(0xFF8C2D19),
          centerTitle: true,
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
        ),
        body: FutureBuilder<List<Restaurant>>(
          future: RestaurantsApi.getRestaurantsLocally(context),
          builder: (context, snapshot){
            final restaurants = snapshot.data;
            switch(snapshot.connectionState){
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if(snapshot.hasError){
                  return Center(child: Text('Some error occured!'));
            }else {
                  return buildRestaurants(restaurants!);
            }
            }
          },
        ),
    );
  }

  Widget buildRestaurants(List<Restaurant> restaurants) => ListView.builder(
    physics: BouncingScrollPhysics(),
    itemCount: restaurants.length,
    itemBuilder: (context, index){
      final restaurant = restaurants[index];
      return ListTile(
        title: Text(restaurant.restaurantName),
      );
    },
  );

}

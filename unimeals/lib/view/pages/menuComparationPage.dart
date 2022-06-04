import 'package:flutter/material.dart';
import 'package:unimeals/model/restaurantJson.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

const cantinasUrl =
    'https://sigarra.up.pt/feup/pt/mob_eme_geral.cantinas';

void main() async {
  var response = await http.get(Uri.parse(cantinasUrl));
  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    print(data);
  } else {
    throw Exception(  'Failed to read $cantinasUrl');
  }
}


class Services{

   Future<List<Restaurant>> getRestaurants() async{
      var response = await http.get(Uri.parse(cantinasUrl));
      if (response.statusCode == 200) {
        final List<Restaurant> restaurants = restaurantFromJson(response.body)
        var data = json.decode(response.body);
        print(data);
      } else {
      throw Exception('Failed to weee read $cantinasUrl');
      }
  }
}


class MenuComparationPage extends StatelessWidget {
  /*@override
  List<Restaurant> restaurants;
  bool _loading;
  void initState(){
    super.initState();
    _loading = true;

  }*/

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
        body:Container(
            width: double.infinity,
            child: Text(
              'Página de comparação de menus',
              textAlign: TextAlign.center,
            )
        )
    );
  }
}

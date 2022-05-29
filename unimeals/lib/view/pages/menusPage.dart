import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/restaurants.dart';
import 'package:unimeals/view/widgets/changeViewButton.dart';

class menusPage extends StatefulWidget {
  Restaurant restaurant;
  menusPage(this.restaurant);

  @override
  State<menusPage> createState() => _menusPageState(restaurant);
}

class _menusPageState extends State<menusPage> {
  var selected = 1;
  final Restaurant restaurant;
  _menusPageState(this.restaurant);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UniMeals'),
        backgroundColor: Color(0xFF8C2D19),
        centerTitle: true,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( //apply margin and padding using Container Widget.
                padding: EdgeInsets.all(30),
                child: Text(
                  restaurant.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 30,
                    color: mainRed,  //
                  ),
                ),
              ),
              ButtonList(selected,
                      (int index) {
                    setState(() {
                      selected = index;
                    });
                  }
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Segunda feira',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 24,
                          color: mainRed),
                    ),
                  ),
                ],
              ),
              const ListTile(
                title: const Text(
                  'Carne',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    color: mainRed),
                ),
              ),
              ListTile(
                title: const Text(
                  'Peixe',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: mainRed),
                ),
              ),
              ListTile(
                title: const Text(
                  'Dieta',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: mainRed),
                ),
              ),
              ListTile(
                title: const Text(
                  'Vegetariano',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: mainRed),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
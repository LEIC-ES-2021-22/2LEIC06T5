import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/restaurants.dart';
import 'package:unimeals/view/widgets/changeViewButton.dart';
import 'package:unimeals/model/dish.dart';

class MenusPage extends StatefulWidget {
  final Restaurant restaurant;
  MenusPage(this.restaurant);

  @override
  State<MenusPage> createState() => _MenusPageState(restaurant);
}

class _MenusPageState extends State<MenusPage> {
  var selected = 1;
  final Restaurant restaurant;
  _MenusPageState(this.restaurant);
  var dishLength = 3;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UniMeals'),
          automaticallyImplyLeading: false,
          backgroundColor: mainRed,
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
                        if(index == 0) {Navigator.pop(context);}
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
                            fontSize: 24,
                            color: mainRed),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: restaurant.dishes.length,
                      itemBuilder: (context, index){
                        List restaurantDishes = restaurant.dishes;
                        return ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          tileColor: secondaryOrange,
                          title: Text(
                            restaurantDishes[index].type,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: mainRed),
                          ),
                          subtitle: Text(
                            restaurantDishes[index].name,
                            style: TextStyle(
                                fontSize: 15,
                                color: mainRed),
                          ),
                        );
                      }),
                )

              ],
            ),
          ),
        )
    );
  }
}
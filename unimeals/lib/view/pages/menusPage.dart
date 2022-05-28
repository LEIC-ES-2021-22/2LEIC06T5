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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Horário: 0:00 às 00:00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: mainRed),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Dá o teu feedback',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,
                      color: Colors.amber),
                  Text(restaurant.rating.toString()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  FloatingActionButton.extended(
                    heroTag: "button2",
                    label: Text('Gosto'), // <-- Text
                    backgroundColor: mainOrange,
                    icon: Icon( // <-- Icon
                      Icons.thumb_up_alt_outlined,
                      size: 15.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
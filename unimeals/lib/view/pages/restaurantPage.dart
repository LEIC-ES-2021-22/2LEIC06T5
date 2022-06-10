import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/restaurants.dart';
import 'package:unimeals/view/pages/menusPage.dart';
import 'package:unimeals/view/widgets/changeViewButton.dart';
import 'package:unimeals/view/widgets/googleMaps.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';

class restaurantPage extends StatefulWidget {
  final Restaurant restaurant;
  restaurantPage(this.restaurant);

  @override
  State<restaurantPage> createState() => _restaurantPageState(restaurant);
}

class _restaurantPageState extends State<restaurantPage> {
  var selected = 0;
  final Restaurant restaurant;
  _restaurantPageState(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbarDrawer(),
      appBar: AppBar(
        title: Text('UniMeals'),
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
                      if(index == 1) {Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => MenusPage(restaurant))); index--;}
                      selected = index;
                    });
                  }
              ),
              Image.asset(
                restaurant.imageUrl,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Horário: 8:30 às 19:00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: mainRed),
                ),
              ),
              FloatingActionButton.extended(
                heroTag: "button1",
                label: Text('Ver localização'), // <-- Text
                backgroundColor: mainRed,
                icon: Icon( // <-- Icon
                  Icons.location_pin,
                  size: 24.0,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MapSample(restaurant: restaurant)));
                },
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
                  FloatingActionButton.extended(
                    heroTag: "button3",
                    label: Text('Não gosto'), // <-- Text
                    backgroundColor: mainOrange,
                    icon: Icon( // <-- Icon
                      Icons.thumb_down_alt_outlined,
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

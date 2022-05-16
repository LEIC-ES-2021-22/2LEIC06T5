
import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/restaurants.dart';
import 'package:unimeals/view/restaurantPage.dart';

class RestaurantsListScreen extends StatelessWidget {
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
        body: ListView.builder(
            itemCount: restaurantList.length,
            itemBuilder: (context, index) {
              Restaurant restaurant = restaurantList[index];
              return Card(
                key: const Key('main_page'), //  Identificador para acceptance test forward button
                child: ListTile(
                  title:
                  Container( //apply margin and padding using Container Widget.
                    padding: EdgeInsets.all(5), //You can use EdgeInsets like above
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: mainRed,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text(
                      restaurant.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,  //
                      ),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                       Icon(Icons.star,
                          color: Colors.amber),
                      Text(restaurant.rating.toString()),
                    ],
                  ),
                  leading: Image.asset(
                    restaurant.imageUrl,
                    width: 80,
                    height: 100),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  key: const Key('button_forward'), //  Identificador para acceptance test forward button
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => restaurantPage(restaurant)));
                  },
                ),
              );
            }));
  }
}


/*

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var selected = 0;
    return Scaffold(
      backgroundColor: mainRed,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios,
            Icons.menu,
          ),
          RestaurantInfo(),
        ],
      ),
    );
    return Container();
  }
}*/






/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UniMeals"),
        backgroundColor: Color(0xFF8C2D19),
        centerTitle: true,
      ),
      body: Column(
          children: [
            Card(
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/cantinaExterior.jpg'))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Neww'),
                ),
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
            )
          ],
      ),
      );
  }
}
*/
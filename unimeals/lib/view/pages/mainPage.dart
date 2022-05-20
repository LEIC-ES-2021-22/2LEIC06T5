import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/restaurants.dart';
import 'package:unimeals/view/pages/restaurantPage.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: navbarDrawer(),
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
                }))
    );
  }
}

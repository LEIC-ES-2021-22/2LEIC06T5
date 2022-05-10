
import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/widgets/restaurant_list.dart';

import '../../widgets/custom_app_bar.dart';

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
}






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
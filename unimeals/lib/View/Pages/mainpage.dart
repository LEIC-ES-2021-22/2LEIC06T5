import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UniMeals"),
        backgroundColor: Color(0xFF8C2D19),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage('lib/model/images/cantina_feup.jpeg', package: 'unimeals'),
        )
      ),
    );
  }
}
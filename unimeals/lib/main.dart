import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UniMeals'),
        backgroundColor: Color(0xFF8C2D19),
        centerTitle: true,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0), bottomRight: Radius.circular(260))),
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              '  Uni\nMeals',
              style: TextStyle(
                fontSize: 30.0,
                color: Color(0xFF8C2D19),
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(50.0),
          )
        ],
      ),
    );
  }
}


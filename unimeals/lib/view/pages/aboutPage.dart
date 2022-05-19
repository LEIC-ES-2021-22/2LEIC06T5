import 'package:flutter/material.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';

class AboutPage extends StatelessWidget {
  @override
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
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            padding: EdgeInsets.fromLTRB(150.0, 30.0, 100.0, 30.0),
          ),
          Container(
            child: Text(
              'Framework desenvolvida pelo grupo 2LEIC06T5 no âmbito da unidade curricular Engenharia de Software.',
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF8C2D19),
              ),
            ),
            padding: EdgeInsets.all(25.0),
          ),
          Container(
            child: Text(
              'De estudantes, para estudantes!',
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF8C2D19),
              ),
            ),
            padding: EdgeInsets.all(25.0),
          ),
          Container(
            child: Text(
              'Integrantes do grupo:',
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF8C2D19),
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(25.0),
          ),
          Container(
            child: Text(
              'André Miguel Pacheco Morais\n\nAnete Medina Pereira\n\nMaria Carlota Gomes Ribeiro Matos Leite\n\nMaria Eduarda Pacheco Mendes Araújo\n\nMiguel Bravo de Almeida e Silva Figueiredo ' ,
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF8C2D19),
              ),
            ),
            padding: EdgeInsets.all(25.0),
          )
        ],
      ),
    );
  }
}
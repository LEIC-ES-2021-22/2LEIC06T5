import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';

class AboutPage extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Text(
                    '  Uni\nMeals',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: mainRed,
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
                      color: mainRed,
                    ),
                  ),
                  padding: EdgeInsets.all(25.0),
                ),
                Container(
                  child: Text(
                    'De estudantes, para estudantes!',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: mainRed,
                    ),
                  ),
                  padding: EdgeInsets.all(25.0),
                ),
                Container(
                  child: Text(
                      'Como funciona a Uni Meals?' ,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: mainRed,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  padding: EdgeInsets.all(25.0),
                ),
                Container(
                  child: Text(
                    '• Página Inicial\n'
                      'Nesta página podes ver os restaurantes da FEUP, com a respetiva localização, menus e feedback dado pelos utilizadores.\n\n'
                      '• Página de Filtros\n'
                      'Aqui podes escolher os filtros que queres que sejam aplicados aos teus menus como, por exemplo, serem apenas apresentados os pratos de carne e de dieta.\n\n'
                      '• Comparação de Menus\n'
                      'Para além de poderes ver os menus de cada restaurante na sua página, podes compará-los entre vários restaurantes.\n\n',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: mainRed,
                    )
                  ),
                  padding: EdgeInsets.all(25.0),
                ),
                Container(
                  child: Text(
                    'Integrantes do grupo:',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: mainRed,
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
                      color: mainRed,
                    ),
                  ),
                  padding: EdgeInsets.all(25.0),
                )
              ],
            ),
        ),
      ),
    );
  }
}
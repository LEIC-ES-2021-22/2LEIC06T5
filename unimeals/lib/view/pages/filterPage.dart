import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';
import 'package:unimeals/model/filters.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState()=> _FilterPageState();

}
class _FilterPageState extends State<FilterPage>{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: navbarDrawer(),
      appBar: AppBar(
        title: Text('UniMeals'),
        backgroundColor: mainRed,
        centerTitle: true,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
      ),
      body:ListView(children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(16.0),
          selected: true,

          title:Text('Filtros:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: mainRed,
              fontSize:(35.0)//
            ),
          ),

        ),
        SwitchListTile(
            title: Text('Carne',
            style: TextStyle(
              color: mainRed,
                fontSize: 23.0
            )
            ),
            activeTrackColor: mainRed,
            activeColor: Colors.white,
            value: Filters().switchcarne,
            onChanged: (bool value){
              setState((){
                Filters().switchcarne = value;
              });
            }
        ),
        SwitchListTile(
            title: Text('Peixe',
                style: TextStyle(
                    color: mainRed,
                    fontSize: 23.0
                )
            ),
            activeTrackColor: mainRed,
            activeColor: Colors.white,
            value: Filters().switchpeixe,
            onChanged: (bool value){
              setState((){
                Filters().switchpeixe = value;
              });
            }
        ),
        SwitchListTile(
            title: Text('Dieta',
                style: TextStyle(
                    color: mainRed,
                    fontSize: 23.0
                )
            ),
            activeTrackColor: mainRed,
            activeColor: Colors.white,
            value: Filters().switchdieta,
            onChanged: (bool value){
              setState((){
                Filters().switchdieta = value;
              });
            }
        ),
        SwitchListTile(
            title: Text('Vegetariano',
                style: TextStyle(
                    color: mainRed,
                    fontSize: 23.0
                )
            ),
            activeTrackColor: mainRed,
            activeColor: Colors.white,
            value: Filters().switchvegetariano,
            onChanged: (bool value){
              setState((){
                Filters().switchvegetariano = value;
              });
            }
        )
      ]
      ),
    );
  }
}

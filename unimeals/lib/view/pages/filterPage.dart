import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


class FilterPage extends StatefulWidget{
  @override
  _FilterPageState createState()=> _FilterPageState();

}
class _FilterPageState extends State<FilterPage>{
    bool _switchcarne =true;
    bool _switchpeixe =true;
    bool _switchdieta =true;
    bool _switchvegetariano =true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('UniMeals',
        ),
        backgroundColor: Color(0xFF8C2D19),
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
            title: Text('Carnes',
            style: TextStyle(
              color: mainRed,
                fontSize: 23.0
            )
            ),
            activeTrackColor: mainRed,
            activeColor: Colors.white,
            value: _switchcarne,
            onChanged: (bool value){
              setState((){
                _switchcarne=value;
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
            value: _switchpeixe,
            onChanged: (bool value){
              setState((){
                _switchpeixe=value;
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
            value: _switchdieta,
            onChanged: (bool value){
              setState((){
                _switchdieta=value;
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
            value: _switchvegetariano,
            onChanged: (bool value){
              setState((){
                _switchvegetariano=value;
              });
            }
        )
      ]
      ),
    );
  }
}

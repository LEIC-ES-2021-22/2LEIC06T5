import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';


class navbarDrawer extends StatelessWidget{
  final padding = EdgeInsets.all(10);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Material(
        color: mainRed,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Testing',
              icon: Icons.house,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
      }){
    final color = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
           style: TextStyle(color: color)),
      onTap: () {},
    );
  }

}
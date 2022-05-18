import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/navbarItems.dart';


class navbarDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Drawer(
        child: Material(
          color: mainRed,
          child: ListView.builder(
            itemCount: navbarList.length,
            itemBuilder: (context, index) {
            Navbar navbarItem = navbarList[index];
            return ListTile(
                title: Container(
                  child: Text(navbarItem.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)),
                ),
                leading: Icon(navbarItem.icon),
            );
        }),
      ),
    );
    }

  }
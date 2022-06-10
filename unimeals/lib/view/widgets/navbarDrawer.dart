import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/navbarItems.dart';
import 'package:unimeals/view/pages/AboutPage.dart';
import 'package:unimeals/view/pages/filterPage.dart';
import 'package:unimeals/view/pages/mainPage.dart';
import 'package:unimeals/view/pages/menuComparationPage.dart';
import 'package:unimeals/view/pages/menusPagehtml.dart';

//TODO: Improve design of navbar, add more top padding

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
                onTap: () => selectedPage(context, navbarItem.pageNum));
        }),
      ),
    );
    }

    void selectedPage(BuildContext context, int pageNum){
    switch(pageNum){
     case 1:{
         Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context) => MainPage()));
         break;
       }
      case 2:{
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FilterPage()));
        break;
      }
      case 3:{
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MenuComparationPage()));
        break;
      }
      case 4:{
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AboutPage()));
        break;
      }
    }
  }
}


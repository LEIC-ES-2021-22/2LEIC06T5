import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';




class MenuPagehtml extends StatelessWidget {

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
        body:Container(
            width: double.infinity,
            child: Text(
              'Página de comparação de menus html',
              textAlign: TextAlign.center,
            )
        )
    );
  }
}

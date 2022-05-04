import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


abstract class GeneralDesignViewState extends State<StatefulWidget>{
  final double borderMargin = 18.0;

  @override
  Widget build(BuildContext context){
    return this.getScaffold(context, getBody(context));
  }

  Widget getBody(BuildContext context){
    return Container();
  }

  // To organize the page
  Widget getScaffold(BuildContext context, Widget body){
    return Scaffold(
      appBar: buildAppBar(context), //Implemented after
      /*
      *  drawer: NavigationDrawer(parentContext: context),
      * body: this.refreshState(context, body),
      */
    );
  }

  AppBar buildAppBar(
        title: Text('UniMeals'),
        backgroundColor: Color(0xFF8C2D19),
        centerTitle: true,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
      )


}
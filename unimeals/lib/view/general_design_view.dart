import 'package:flutter/cupertino.dart';


abstract class GeneralDesignViewState extends State<StatefulWidget>{
  final double borderMargin = 18.0;

  @override
  Widget build(BuildContext context){
    return this.getScaffold(context, getBody(context));
  }

  Widget getBody(BuildContext context){
    return Container();
  }

  

}
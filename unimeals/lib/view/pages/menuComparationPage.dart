import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/dish.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';
import 'package:unimeals/model/filters.dart';

class MenuComparationPage extends StatelessWidget {
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
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Grill Dishes
                    Container(
                        height: 385,
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text('Grill',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: mainRed
                                  )
                              ),
                              Container(
                                  child: ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: dishGrill.length,
                                      itemBuilder: (context, index) {
                                        Dish grill = dishGrill[index];
                                        return Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                            color: clearOrange,
                                            child: Visibility(
                                                visible: (index == 0)? Filters().switchcarne : (index==1)? Filters().switchpeixe : (index==2)? Filters().switchdieta : Filters().switchvegetariano,
                                                child:ListTile(
                                              title: Text(
                                                  grill.type,
                                                  style: TextStyle(color: mainRed)
                                              ),
                                              subtitle: Text(grill.name),
                                              leading: Text(grill.day,
                                                style: TextStyle(
                                                    fontSize: 15
                                                ),),
                                            )
                                        ),);
                                      })
                              )
                            ],
                          ),
                        )
                    ),
                    // Cafetaria Dishes
                    Container(
                        height: 400,
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text('Cafetaria - Restaurante FEUP',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: mainRed
                                  )),
                              Container(
                                  child: ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: dishCafetaria.length,
                                      itemBuilder: (context, index) {
                                        Dish cafetaria = dishCafetaria[index];
                                        return Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          color: clearOrange,
                                          child: Visibility(
                                            visible: (index == 0)? Filters().switchcarne : (index==1)? Filters().switchpeixe : (index==2)? Filters().switchdieta : Filters().switchvegetariano,
                                            child:
                                          ListTile(
                                              title: Text(cafetaria.type,
                                                  style: TextStyle(color: mainRed)),
                                              subtitle: Text(cafetaria.name),
                                            leading: Text(cafetaria.day,
                                              style: TextStyle(
                                                  fontSize: 15
                                              ),),
                                          ),
                                        ),);
                                      })
                              )
                            ],
                          ),
                        )
                    ),
                    // Inegi dishes
                    Container(
                        height: 385,
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text('Restaurante do INEGI',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: mainRed
                                  )),
                              Container(
                                  child: ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: dishInegi.length,
                                      itemBuilder: (context, index) {
                                        Dish inegi = dishInegi[index];
                                        return Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          color: clearOrange,
                                          child: Visibility(
                                        visible: (index == 0)? Filters().switchcarne : (index==1)? Filters().switchpeixe : (index==2)? Filters().switchdieta : Filters().switchvegetariano,
                                        child:
                                          ListTile(
                                              title: Text(
                                                  inegi.type,
                                                  style: TextStyle(color: mainRed)
                                              ),
                                              subtitle: Text(inegi.name),
                                            leading: Text(inegi.day,
                                              style: TextStyle(
                                                  fontSize: 15
                                              ),),
                                          ),
                                        ),);
                                      })
                              )
                            ],
                          ),
                        )
                    ),

                    // Cantina Almoço dishes
                    Container(
                        height: 385,
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text('Cantina - Almoço',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: mainRed
                                  )),
                              Container(
                                  child: ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: dishCantinaAlmoco.length,
                                      itemBuilder: (context, index) {
                                        Dish cantAlmoco = dishCantinaAlmoco[index];
                                        return Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          color: clearOrange,
                                          child:
                                              Visibility(
                                        visible: (index == 0)? Filters().switchcarne : (index==1)? Filters().switchpeixe : (index==2)? Filters().switchdieta : Filters().switchvegetariano,
                                        child:
                                          ListTile(
                                              title: Text(
                                                  cantAlmoco.type,
                                                  style: TextStyle(color: mainRed)
                                              ),
                                              subtitle: Text(cantAlmoco.name),
                                            leading: Text(cantAlmoco.day,
                                              style: TextStyle(
                                                  fontSize: 15
                                              ),),
                                          ),
                                        ),);
                                      })
                              )
                            ],
                          ),
                        )
                    ),
                    // Cantina Jantar dishes
                    Container(
                        height: 385,
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text('Cantina - Jantar',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: mainRed
                                  )),
                              Container(
                                  child: ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: dishCantinaJantar.length,
                                      itemBuilder: (context, index) {
                                        Dish cantJantar = dishCantinaJantar[index];
                                        return Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          color: clearOrange,
                                          child: Visibility(visible: (index == 0)? Filters().switchcarne : (index==1)? Filters().switchpeixe : (index==2)? Filters().switchdieta : Filters().switchvegetariano,
                                          child:
                                          ListTile(
                                              title: Text(
                                                  cantJantar.type,
                                                  style: TextStyle(color: mainRed)
                                              ),
                                              subtitle: Text(cantJantar.name),
                                            leading: Text(cantJantar.day,
                                              style: TextStyle(
                                                  fontSize: 15
                                              ),),
                                          ),
                                        ),);
                                      })
                              )
                            ],
                          ),
                        )
                    ),
                    // Inesctec dishes
                    Container(
                        height: 385,
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text('Bar INESC TEC',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: mainRed
                                  )),
                              Container(
                                  child: ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: dishInesctec.length,
                                      itemBuilder: (context, index) {
                                        Dish inesctec = dishInesctec[index];
                                        return Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          color: clearOrange,
                                          child:
                                          Visibility(
                                            visible: (index == 0)? Filters().switchcarne : (index==1)? Filters().switchpeixe : (index==2)? Filters().switchdieta : Filters().switchvegetariano,
                                            child:
                                            ListTile(
                                              title: Text(
                                                  inesctec.type,
                                                  style: TextStyle(color: mainRed)
                                              ),
                                              subtitle: Text(inesctec.name),
                                              leading: Text(inesctec.day,
                                                style: TextStyle(
                                                    fontSize: 15
                                                ),),
                                            ),
                                          ),);
                                      })
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                )
            )
        )


    );
  }
}

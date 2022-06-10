import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/dish.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';

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
                    height: 400,
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text('Grill'),
                            Container(
                                child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: dishGrill.length,
                                    itemBuilder: (context, index) {
                                      Dish grill = dishGrill[index];
                                      return Card(
                                        child: ListTile(
                                            title: Text(
                                                grill.type
                                            ),
                                            subtitle: Text(grill.name)
                                        ),
                                      );
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
                            Text('Cafetaria'),
                            Container(
                                child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: dishCafetaria.length,
                                    itemBuilder: (context, index) {
                                      Dish cafetaria = dishCafetaria[index];
                                      return Card(
                                        child: ListTile(
                                            title: Text(
                                                cafetaria.type
                                            ),
                                            subtitle: Text(cafetaria.name)
                                        ),
                                      );
                                    })
                            )
                          ],
                        ),
                      )
                  ),
                  // Inegi dishes
                  Container(
                      height: 400,
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text('Inegi'),
                            Container(
                                child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: dishInegi.length,
                                    itemBuilder: (context, index) {
                                      Dish inegi = dishInegi[index];
                                      return Card(
                                        child: ListTile(
                                            title: Text(
                                                inegi.type
                                            ),
                                            subtitle: Text(inegi.name)
                                        ),
                                      );
                                    })
                            )
                          ],
                        ),
                      )
                  ),
                  // Inesctec dishes
                  Container(
                      height: 400,
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text('Inesctec'),
                            Container(
                                child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: dishInesctec.length,
                                    itemBuilder: (context, index) {
                                      Dish inesctec = dishInesctec[index];
                                      return Card(
                                        child: ListTile(
                                            title: Text(
                                                inesctec.type
                                            ),
                                            subtitle: Text(inesctec.name)
                                        ),
                                      );
                                    })
                            )
                          ],
                        ),
                      )
                  ),
                  // Cantina Almoço dishes
                  Container(
                      height: 400,
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text('Cantina Almoço'),
                            Container(
                                child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: dishCantinaAlmoco.length,
                                    itemBuilder: (context, index) {
                                      Dish cantAlmoco = dishCantinaAlmoco[index];
                                      return Card(
                                        child: ListTile(
                                            title: Text(
                                                cantAlmoco.type
                                            ),
                                            subtitle: Text(cantAlmoco.name)
                                        ),
                                      );
                                    })
                            )
                          ],
                        ),
                      )
                  ),
                  // Cantina Jantar dishes
                  Container(
                      height: 400,
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text('Cantina Jantar'),
                            Container(
                                child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: dishCantinaJantar.length,
                                    itemBuilder: (context, index) {
                                      Dish cantJantar = dishCantinaJantar[index];
                                      return Card(
                                        child: ListTile(
                                            title: Text(
                                                cantJantar.type
                                            ),
                                            subtitle: Text(cantJantar.name)
                                        ),
                                      );
                                    })
                            )
                          ],
                        ),
                      )
                  )
                ],
              )
            )
        )


    );
  }
}

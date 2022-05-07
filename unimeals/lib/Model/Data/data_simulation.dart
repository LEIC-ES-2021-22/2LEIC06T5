import 'package:flutter/material.dart';

//classes necessárias restaurants dishes ratings filters dias da semana

class Restaurant{
  final int id;
  final String name;
  final String reference;
  final Map<DayOfWeek, List<Meal>> meals;

  Restaurant(this.id, this.name, this.reference, {List<Meal> meals = null})
      : this.meals = meals != null
      ? groupBy(meals, (meal) => meal.dayOfWeek)
      : HashMap.identity(){}

  static Restaurant fromMap(Map<String, dynamic> map){
    return Restaurant(map['id'], map['name'], map['ref'], meals:map['meals']);
  }

  List<Meal> getMealsOfDay(DayOfWeek dayOfWeek){
    return meals[dayOfWeek];
  }

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'name': name,
      'ref': reference
    };
  }
}

class Meal{
  final String type;
  final String name;
  final DayOfWeek dayOfWeek;
  final DateTime date;
  Meal(this.type, this.name, this.dayOfWeek, this.date);

  Map<String, dynamic> toMap(restaurantId) {
    final DateFormat format = DateFormat('d-M-y');
    return {
      'id':null,
      'day':toString(this.dayOfWeek),
      'type':this.type,
      'name':this.name,
      'date': this.date != null ? format.format(this.date) : null,
      'id_restaurant':restaurantId};
  }
}

enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}

DayOfWeek parseDayOfWeek(String str){
  str = str.replaceAll(' ', '').toLowerCase();
  if(str == 'segunda-feira') {
    return DayOfWeek.monday;
  } else if(str == 'terça-feira') {
    return DayOfWeek.tuesday;
  } else if(str == 'quarta-feira' ) {
    return DayOfWeek.wednesday;
  } else if(str == 'quinta-feira') {
    return DayOfWeek.thursday;
  } else if(str == 'sexta-feira') {
    return DayOfWeek.friday;
  } else if(str == 'sábado' || str == 'sabado') {
    return DayOfWeek.saturday;
  } else if(str == 'domingo') {
    return DayOfWeek.sunday;
  } else {
    return null;
  }
}

String toString(DayOfWeek day){
  switch(day){
    case DayOfWeek.monday:
      return 'Segunda-feira';
    case DayOfWeek.tuesday:
      return 'Terça-feira';
    case DayOfWeek.wednesday:
      return 'Quarta-feira';
    case DayOfWeek.thursday:
      return 'Quinta-feira';
    case DayOfWeek.friday:
      return 'Sexta-feira';
    case DayOfWeek.saturday:
      return 'Sábado';
    case DayOfWeek.sunday:
      return 'Domingo';
  }
  return null;
}

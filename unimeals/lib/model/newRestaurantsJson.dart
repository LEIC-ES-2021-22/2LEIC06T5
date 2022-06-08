



class Restaurant{
  int code;
  String restaurantName;
  String schedule;
  List<Menu> menu;


  Restaurant(
  {
  this.code = 0,
  this.restaurantName = '',
  this.schedule = '',
    this.menu = const <Menu>[],
  });

  factory Restaurant.fromJson(dynamic json){
    return Restaurant(
        code: json[0]["codigo"],
        restaurantName: json[0]["descricao"],
        schedule: json[0]["horario"],
        menu: List<Menu>.from(json[0]["ementas"].map((x) => Menu.fromJson(x)))
    );
  }
}

class Menu{
  //String data;
  List<Dish> dishes;

  Menu(
      {
        //this.data ='',
        this.dishes = const <Dish>[],
      });

  factory Menu.fromJson(Map<String, dynamic> json){
    return Menu(
        dishes: List<Dish>.from(json["pratos"].map((x) => Dish.fromJson(json)))
    );
  }
}


class Dish{
  String dishName;
  String dishType;

  Dish(
      {
        this.dishName ='',
        this.dishType = '',
      });

  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
        dishName: json["descricao"] = '',
        dishType: json["tipo_descr"]);
  }
}


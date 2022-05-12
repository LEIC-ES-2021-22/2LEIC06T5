class Dish{
  String name;
  String typeOfDish;

  Dish(this.name, this.typeOfDish);

  static List<Dish> generateDishesGrill(){
    return[
      Dish(
        'Frango assado com arroz de tomate',
        'Carne'
      ), Dish('Lombo de porco assado com maçã',
          'Carne'),
      Dish(
          'Bacalhau fresco à zé do pipo	',
          'Peixe'
      ), Dish('Truta com bacon com batata cozida	',
          'Peixe')
    ];
  }

  static List<Dish> generateDishesCantina(){
    return[
      Dish(
          'Novilho assado fatiado com massa espirais tricolor',
          'Carne'
      ), Dish('Massa colorida de peru',
          'Carne'),
      Dish(
          'Sardinhas assadas com batata a murro',
          'Peixe'
      ), Dish('Lasanha de atum',
          'Peixe')
    ];
  }

}


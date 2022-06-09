

class Dish {
  String name;
  String type;
  String day;

  Dish(
      {
        this.name = '',
        this.type = '',
        this.day = ''
      });
}

List<Dish> grillList = [
  Dish(
      name: 'Lombo de porco assado com maçã	',
      type: 'Carne',
      day: 'segunda-feira'),
  Dish(
      name: 'Salmão grelhado com molho de manteiga e batata a murro	',
      type: 'Peixe',
      day: 'segunda-feira'),
  Dish(
      name: 'Paella vegetariana (pimento, feijão-verde, cenoura e seitan)',
      type: 'Vegetariano',
      day: 'segunda-feira'),
  Dish(
      name: 'Alheira à Moda de Mirandela',
      type: 'Carne',
      day: 'terça-feira'),
  Dish(name: 'Escalopes de sardinha com arroz de feijão',
      type: 'Peixe',
      day: 'terça-feira'),
];

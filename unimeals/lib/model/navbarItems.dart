import 'package:flutter/material.dart';

class Navbar {
  String name;
  IconData icon;

  Navbar(
      {this.name = "",
        this.icon = Icons.food_bank_outlined,
      });
}

List<Navbar> navbarList = [
  Navbar(
    name: 'Página Principal',
    icon: Icons.food_bank_outlined,
  ),
  Navbar(
    name: 'Página de Filtros',
    icon: Icons.filter_alt_outlined,
  ),
  Navbar(
    name: 'Comparação de Menus',
    icon: Icons.restaurant_menu,
  ),
  Navbar(
    name: 'Sobre',
    icon: Icons.info_outline,
  )
];
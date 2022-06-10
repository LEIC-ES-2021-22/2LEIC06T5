import 'package:flutter/material.dart';

class Navbar {
  String name;
  IconData icon;
  int pageNum;   // For navigation when changing pages in

  Navbar(
      {this.name = "",
        this.icon = Icons.food_bank_outlined,
        this.pageNum = 1
      });
}

List<Navbar> navbarList = [
  Navbar(
    name: 'Página Principal',
    icon: Icons.food_bank_outlined,
    pageNum: 1
  ),
  Navbar(
    name: 'Página de Filtros',
    icon: Icons.filter_alt_outlined,
    pageNum: 2
  ),
  Navbar(
    name: 'Todas as Ementas',
    icon: Icons.restaurant_menu,
    pageNum: 3
  ),
  Navbar(
    name: 'Sobre',
    icon: Icons.info_outline,
    pageNum: 4
  )

];
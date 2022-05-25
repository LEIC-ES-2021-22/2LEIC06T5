import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';

class ButtonList extends StatelessWidget {
  final int selected;
  final Function callback;

  const ButtonList(this.selected, this.callback);

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = ["Restaurante","Menus"];

    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated (
      padding: const EdgeInsets.symmetric(horizontal: 60),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                    color: selected == index ? mainRed : mainGray,
              ),
              child: Text(
                buttons[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          separatorBuilder: (_, index) => const SizedBox(width: 40), itemCount: 2),
    );
  }
}
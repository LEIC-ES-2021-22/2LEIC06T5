import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  final IconData navIcon; //
  final IconData goBack;  //
  final Function? leftCallBack;

  CustomAppBar(this.navIcon, this.goBack, {this.leftCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallBack != null ? () => leftCallBack!() : null,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(navIcon),
            )
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(goBack),
          )
        ],
      ),
    );
  }
}

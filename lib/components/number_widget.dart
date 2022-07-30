import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  String number;
  VoidCallback? onpress;
  NumberWidget({required this.number, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: kDarkColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            number.toString(),
            style: kNumberTextStyle,
          ),
        ),
      ),
    );
  }
}

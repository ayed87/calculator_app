import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class OperatorButton extends StatelessWidget {
  String sign;
  VoidCallback? onpress;
  OperatorButton({required this.sign, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blue.shade500,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            sign.toString(),
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}

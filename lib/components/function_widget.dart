import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class FunctionWidget extends StatelessWidget {
  IconData icon;
  VoidCallback? onpress;
  FunctionWidget({required this.icon, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

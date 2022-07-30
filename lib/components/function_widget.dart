import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class FunctionWidget extends StatelessWidget {
  String? text;
  IconData? icon;
  VoidCallback? onpress;
  FunctionWidget({this.icon, this.onpress, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        //have to make sure that on of the two properties (text and icon..) is null. otherwise it will give you an error.
        child: Center(
          child: icon != null
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : Text(
                  text.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
        ),
      ),
    );
  }
}

import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  String number;
  VoidCallback? onpress;
  NumberWidget({required this.number, this.onpress});

  @override
  State<NumberWidget> createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpress,
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
            widget.number.toString(),
            style: kNumberTextStyle,
          ),
        ),
      ),
    );
  }
}

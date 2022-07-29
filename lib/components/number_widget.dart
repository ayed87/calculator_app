import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  const NumberWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NumberWidget> createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xff2E353C),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            '7',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

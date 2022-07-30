import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

// class NumberWidget extends StatefulWidget {
//   NumberWidget({this.onpressed, required this.number});

//   @override
//   State<NumberWidget> createState() => _NumberWidgetState();
// }

// class _NumberWidgetState extends State<NumberWidget> {
//   @override
//   Widget build(BuildContext context) {
//     widget.onpressed;

//     return
//   }
// }

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
          color: Color(0xff2E353C),
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

class RoundIconBotton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onpress;
  const RoundIconBotton({this.icon, this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      elevation: 6,
      fillColor: Colors.red,
      constraints: BoxConstraints.tightFor(
        width: 60,
        height: 60,
      ),
    );
  }
}

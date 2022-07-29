import 'package:flutter/material.dart';
import 'package:calculator/constants.dart';
import 'package:calculator/components/number_widget.dart';

class CalculatorPage extends StatelessWidget {
  @override
  int result = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  result.toString(),
                  style: kReslutTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    children: [NumberWidget()],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

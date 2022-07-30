import 'package:flutter/material.dart';
import 'package:calculator/constants.dart';
import 'package:calculator/components/number_widget.dart';
import 'package:calculator/components/function_widget.dart';
import 'package:ionicons/ionicons.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '';

  @override
  void changeResult(String newResult) {
    result += newResult;
  }

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
                    children: [
                      FunctionWidget(
                        icon: Ionicons.backspace_outline,
                        onpress: () {
                          setState(() {
                            if (result != null && result.length > 0) {
                              result = result.substring(0, result.length - 1);
                            }
                          });
                        },
                      ),
                      NumberWidget(
                        number: '7',
                        onpress: () {
                          setState(() {
                            changeResult('7');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '4',
                        onpress: () {
                          setState(() {
                            changeResult('4');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '1',
                        onpress: () {
                          setState(() {
                            changeResult('1');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '0',
                        onpress: () {
                          setState(() {
                            changeResult('0');
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FunctionWidget(
                        icon: Ionicons.backspace_outline,
                        onpress: () {
                          setState(() {
                            if (result != null && result.length > 0) {
                              result = result.substring(0, result.length - 1);
                            }
                          });
                        },
                      ),
                      NumberWidget(
                        number: '8',
                        onpress: () {
                          setState(() {
                            changeResult('8');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '5',
                        onpress: () {
                          setState(() {
                            changeResult('5');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '2',
                        onpress: () {
                          setState(() {
                            changeResult('2');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '0',
                        onpress: () {
                          setState(() {
                            changeResult('0');
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FunctionWidget(
                        icon: Ionicons.backspace_outline,
                        onpress: () {
                          setState(() {
                            if (result != null && result.length > 0) {
                              result = result.substring(0, result.length - 1);
                            }
                          });
                        },
                      ),
                      NumberWidget(
                        number: '9',
                        onpress: () {
                          setState(() {
                            changeResult('9');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '6',
                        onpress: () {
                          setState(() {
                            changeResult('6');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '3',
                        onpress: () {
                          setState(() {
                            changeResult('3');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '.',
                        onpress: () {
                          setState(() {
                            changeResult('.');
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FunctionWidget(
                        icon: Ionicons.backspace_outline,
                        onpress: () {
                          setState(() {
                            if (result != null && result.length > 0) {
                              result = result.substring(0, result.length - 1);
                            }
                          });
                        },
                      ),
                      NumberWidget(
                        number: '×',
                        onpress: () {
                          setState(() {
                            changeResult('-');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '+',
                        onpress: () {
                          setState(() {
                            changeResult('6');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '=',
                        onpress: () {
                          setState(() {
                            changeResult('3');
                          });
                        },
                      ),
                      NumberWidget(
                        number: '%',
                        onpress: () {
                          setState(() {
                            changeResult('.');
                          });
                        },
                      ),
                    ],
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

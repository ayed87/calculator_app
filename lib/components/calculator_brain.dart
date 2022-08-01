import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorBrain {
  String getResult(textResult) {
    Parser p = Parser();
    Expression? exp = p.parse(textResult);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    return eval.toString();
  }
}


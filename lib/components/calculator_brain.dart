import 'package:flutter/material.dart';

class CalculatorBrain {
  int? currentResult;
  void setCurrentResult(int number) {
    currentResult = number;
  }

  void addNumber(int number) {
    if (currentResult == null) {
      currentResult = (currentResult! + number);
    }
  }
}

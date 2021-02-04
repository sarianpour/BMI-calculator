import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {@required this.age, @required this.weight, @required this.height});
  final int age;
  final int weight;
  final int height;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight!';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'you are higher than normal BMI, exercise more!';
    } else if (_bmi >= 18.5) {
      return 'you have a normal BMI, good job!';
    } else {
      return 'you have a BMI lower than normal, try to eat a bit more!';
    }
  }
}

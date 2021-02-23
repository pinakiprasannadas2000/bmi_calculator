import 'package:flutter/material.dart';
import 'dart:math';

class CalculateBMI {
  int _height;
  int _weight;
  double _bmi;

  CalculateBMI({@required int height, @required int weight}) {
    this._height = height;
    this._weight = weight;
  }

  String calculateTheBMI() {
    _bmi = _weight / pow(_height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}
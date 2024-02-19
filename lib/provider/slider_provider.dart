import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double _value = 1.0; //by inserting _ means it will be private

  double get value => _value;

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}

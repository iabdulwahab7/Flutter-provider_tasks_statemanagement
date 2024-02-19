import 'package:flutter/cupertino.dart';

class CountProvider with ChangeNotifier {
  int _count = 0; //initialization

  int get count => _count; //getter

  void setCount() {
    _count++;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  increment() {
    counter++;
    //**  when ever the user tap the counter button the state should listen this functions
    notifyListeners();
  }
  
}

import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  CounterProvider({this.counter = 0});

  void incrementCounter() {
    counter++;
    notifyListeners();// Notify all listeners to rebuild UI
  }

  void decrementCounter() {
    counter--;
    notifyListeners();// Notify all listeners to rebuild UI
  }

}
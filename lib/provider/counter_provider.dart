import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter(){
    _counter++;
    notifyListeners();
  }

  void decrementCounter(){
    if(counter != 0){
      _counter--;
      notifyListeners();
    }
  }

}
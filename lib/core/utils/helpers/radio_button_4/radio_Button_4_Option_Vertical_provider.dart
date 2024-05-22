import 'package:flutter/material.dart';

class CalorieRadioButtonProvider extends ChangeNotifier {
  int selection =1;
  void updateSelectionValue(selection){
    this.selection=selection;
    notifyListeners();
  }
}
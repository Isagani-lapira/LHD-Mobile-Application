import 'package:flutter/material.dart';

class CategoryData extends ChangeNotifier {
  int tag = 0;
  String currentOption = 'All work';

  List<String> options = [
    'All work',
    'Tiny House',
    '3D House Plan',
    'Barns',
    'Commercial',
    'Garage',
    'SIPs',
    'Wheelchair Accessible',
  ];
  void setSelectedOption(int index) {
    currentOption = options[index];
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ActivatorBloc extends ChangeNotifier {
  int _activatorCode = 0;
  int get activatorCode => _activatorCode;

  set activatorCode(int value) {
    _activatorCode = value;
    notifyListeners();
  }
}
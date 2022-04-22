import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController shared = AppController();

  bool isDartTheme = false;

  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}

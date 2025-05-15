import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _dark = false;
  bool get dark => _dark;
  ThemeMode get currentTheme => dark ? ThemeMode.dark : ThemeMode.light;
  void toggleTheme() {
    _dark = !dark;
    notifyListeners();
  }
}

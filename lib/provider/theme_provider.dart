import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  bool _isDarkModeEnabled = false;

  ThemeMode get themeMode => _themeMode;

    bool get isDarkModeEnabled => _isDarkModeEnabled;

  void toggleTheme() {
     _isDarkModeEnabled = !_isDarkModeEnabled;
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
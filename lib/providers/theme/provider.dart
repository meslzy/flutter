import "package:flutter/material.dart";

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  setTheme(ThemeMode themeMode) {
    this.themeMode = themeMode;
    notifyListeners();
  }

  ThemeData get light {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
    );
  }

  ThemeData get dark {
    return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
    );
  }
}

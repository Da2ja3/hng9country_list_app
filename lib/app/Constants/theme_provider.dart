import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDark = false;

  void toggleTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
// bool _iconBool = false;
//
// IconData _iconLight = Icons.wb_sunny;
// IconData _iconDark= Icons.nights_stay;
//
// ThemeData _lightTheme= ThemeData(
//   primarySwatch: Colors.amber,
//   brightness: Brightness.light,
// );
// ThemeData _darkTheme= ThemeData(
//   primarySwatch: Colors.amber,
//   brightness: Brightness.dark,
// );


import 'package:flutter/material.dart';

class ThemeDark {
  static Color tableTitleColor = Color(0xff434343);
  static Color background =  Color(0xff434343);
  static Color blue6 = Color(0xff16b9ff);
  static Color buttonDark = Colors.deepPurpleAccent;
  static Color blue12 = Color(0xffA7CCEE);
  static Color white = Color(0xffffffff);
  static Color red1 = Color(0xffC43131);

  static AppBarTheme createAppBarTheme() {
    return AppBarTheme(
        color: background,
        brightness: Brightness.dark,
        centerTitle: true,
        elevation: 8,
        actionsIconTheme: IconThemeData(color: white),
        iconTheme: IconThemeData(color: white));
  }

  /// here u can add the theme colors for almost everything.

  static ThemeData themeDark = new ThemeData(
    brightness: Brightness.dark,
    appBarTheme: createAppBarTheme(),
    backgroundColor: background,
    dividerColor: white,
    errorColor: red1,
    primaryColor: background,
    primaryColorLight: background,
    scaffoldBackgroundColor: background,
    iconTheme: IconThemeData(
      color: white,
      opacity: 1,
      size: 24,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: white
    ),
  );
}
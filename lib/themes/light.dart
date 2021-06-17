
import 'package:flutter/material.dart';

class ThemeLight {
  static Color tableTitleColor = Color(0xff434343);
  static Color background = Color(0xffffffff);
  static Color blue6 = Color(0xff16b9ff);
  static Color blue12 = Color(0xffA7CCEE);
  static Color blue5 = Color(0xff0e3251);
  static Color red1 = Color(0xffC43131);

  static AppBarTheme createAppBarTheme() {
    return AppBarTheme(
        color: background,
        brightness: Brightness.dark,
        centerTitle: true,
        elevation: 8,
        actionsIconTheme: IconThemeData(color: blue5),
        iconTheme: IconThemeData(color: blue5));
  }

  static ThemeData themeLight = new ThemeData(
    brightness: Brightness.light,
    appBarTheme: createAppBarTheme(),
    backgroundColor: background,
    dividerColor: blue6,
    errorColor: red1,
    primaryColor: background,
    primaryColorLight: blue5,
    scaffoldBackgroundColor: background,
    iconTheme: IconThemeData(
      color: blue5,
      opacity: 1,
      size: 24,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: tableTitleColor,
    ),
  );
}

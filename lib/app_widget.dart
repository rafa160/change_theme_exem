import 'package:flutter/material.dart';
import 'package:theme_color/screens/home_module.dart';
import 'package:theme_color/themes/dark.dart';
import 'package:theme_color/themes/light.dart';
import 'package:theme_color/widgets/app_theme.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return AppTheme(
        defaultBrightness: Brightness.dark,
        themeDataWithBrightnessBuilder: (brightness) =>
        brightness == Brightness.light
            ? ThemeLight.themeLight
            : ThemeDark.themeDark,
        themedBuilder: (context, theme) {
          return MaterialApp(
            theme: theme,
            debugShowCheckedModeBanner: false,
            home: HomeModule(),
          );
        });
  }
}

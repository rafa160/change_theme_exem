import 'package:flutter/material.dart';
import 'package:theme_color/widgets/app_theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: isDarkTheme == true ? Text('Dark Theme') : Text('Light Theme'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _switchThemeAction(isDarkTheme);
        },
        label: isDarkTheme == true ? Text('Dark Theme') : Text('Light Theme'),
        icon: Icon(Icons.forward),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Test App'),
          )
        ],
      ),
    );
  }

  void _switchThemeAction(bool isDarkTheme) {
    AppTheme.of(context)
        .setBrightness(isDarkTheme ? Brightness.light : Brightness.dark);
  }
}

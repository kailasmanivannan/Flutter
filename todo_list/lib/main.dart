import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(Todoapp());
}

class Todoapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Homepage(),
        debugShowCheckedModeBanner: false,
        title: 'Todoapp',
        theme: ThemeData(
            elevatedButtonTheme:
                ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ))));
  }
}

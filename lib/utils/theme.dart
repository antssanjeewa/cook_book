import 'package:flutter/material.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    primarySwatch: Colors.green,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
    ),
  );
}

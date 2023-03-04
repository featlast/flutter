import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Colors.deepOrangeAccent;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blueAccent[400],
      //appBar Theme
      appBarTheme: const AppBarTheme(centerTitle: true, color: primary));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.blueAccent[400],
      //appBar Theme
      appBarTheme: const AppBarTheme(centerTitle: true, color: primary),
      scaffoldBackgroundColor: Colors.grey[400]);
}

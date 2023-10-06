import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primary,

      //appbar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //textButton theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ));
}

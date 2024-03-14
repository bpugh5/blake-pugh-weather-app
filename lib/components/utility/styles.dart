import 'package:flutter/material.dart';

final mainColorScheme = ColorScheme(
  primary: Colors.blue,
  onPrimary: Colors.white,
  secondary: Colors.blueAccent.shade700,
  onSecondary: Colors.white,
  tertiary: Colors.grey[200],
  onTertiary: Colors.brown,
  error: Colors.red,
  onError: Colors.red.shade700,
  background: Colors.grey.shade300,
  onBackground: Colors.black,
  brightness: Brightness.light,
  surface: Colors.grey.shade200,
  onSurface: Colors.black,
);

final mainTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: mainColorScheme.primary
  ),
  colorScheme: mainColorScheme,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: mainColorScheme.secondary,
      foregroundColor: mainColorScheme.onSecondary,
    ),
  ),
);

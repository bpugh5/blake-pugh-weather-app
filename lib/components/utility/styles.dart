import 'package:flutter/material.dart';

final lightColorScheme = ColorScheme(
  primary: Colors.blue,
  onPrimary: Colors.black,
  secondary: Colors.blueAccent.shade700,
  onSecondary: Colors.white,
  tertiary: Colors.grey[200],
  onTertiary: Colors.blue.shade100,
  error: Colors.red,
  onError: Colors.red.shade700,
  background: Colors.grey.shade300,
  onBackground: Colors.black,
  brightness: Brightness.light,
  surface: Colors.grey.shade200,
  onSurface: Colors.grey.shade300,
);

final customLightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: lightColorScheme.primary,
    titleTextStyle: TextStyle(color: lightColorScheme.surface, fontSize: 20),
    actionsIconTheme: IconThemeData(color: lightColorScheme.surface),
  ),
  colorScheme: lightColorScheme,
  textTheme: TextTheme(
      headlineLarge: TextStyle(
          fontSize: 40,
          color: lightColorScheme.onBackground,
          fontWeight: FontWeight.bold,
          fontFamily: "Golos"),
      headlineMedium: TextStyle(
          fontSize: 36,
          color: lightColorScheme.onBackground,
          fontWeight: FontWeight.bold,
          fontFamily: "Golos"),
      headlineSmall: TextStyle(
          fontSize: 32,
          color: lightColorScheme.onBackground,
          fontWeight: FontWeight.bold,
          fontFamily: "Golos"),
      labelLarge: TextStyle(
          fontSize: 20,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      labelMedium: TextStyle(
          fontSize: 16,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      labelSmall: TextStyle(
          fontSize: 12,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      displayLarge: TextStyle(
          fontSize: 32,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      displayMedium: TextStyle(
          fontSize: 36,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      displaySmall: TextStyle(
          fontSize: 40,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      titleLarge: TextStyle(
          fontSize: 50,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      titleMedium: TextStyle(
          fontSize: 45,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      titleSmall: TextStyle(
          fontSize: 40,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      bodyLarge: TextStyle(
          fontSize: 16,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      bodyMedium: TextStyle(
          fontSize: 14,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos"),
      bodySmall: TextStyle(
          fontSize: 12,
          color: lightColorScheme.onBackground,
          fontFamily: "Golos")),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: lightColorScheme.onSecondary,
      foregroundColor: lightColorScheme.secondary,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: lightColorScheme.onSecondary,
          foregroundColor: lightColorScheme.secondary)),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderSide: BorderSide(color: lightColorScheme.primary)),
    labelStyle: TextStyle(color: lightColorScheme.onBackground),
    floatingLabelStyle: TextStyle(color: lightColorScheme.primary),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: lightColorScheme.primary),
    ),
  ),
);

final darkColorScheme = ColorScheme(
  primary: Colors.black,
  onPrimary: Colors.grey.shade300,
  secondary: Colors.blueAccent.shade700,
  onSecondary: Colors.grey.shade800,
  tertiary: Colors.grey.shade700,
  onTertiary: Colors.blue.shade600,
  error: Colors.red,
  onError: Colors.red.shade700,
  background: Colors.grey.shade900,
  onBackground: Colors.grey.shade100,
  brightness: Brightness.dark,
  surface: Colors.grey.shade800,
  onSurface: Colors.grey.shade900,
);

final customDarkTheme = ThemeData(
  appBarTheme: AppBarTheme(
      backgroundColor: darkColorScheme.primary,
      titleTextStyle: TextStyle(color: darkColorScheme.onPrimary, fontSize: 20),
      actionsIconTheme: IconThemeData(color: darkColorScheme.onPrimary)),
  colorScheme: darkColorScheme,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
        fontSize: 40,
        color: darkColorScheme.onPrimary,
        fontWeight: FontWeight.bold,
        fontFamily: "Golos"),
    headlineMedium: TextStyle(
        fontSize: 36,
        color: darkColorScheme.onPrimary,
        fontWeight: FontWeight.bold,
        fontFamily: "Golos"),
    headlineSmall: TextStyle(
        fontSize: 32,
        color: darkColorScheme.onPrimary,
        fontWeight: FontWeight.bold,
        fontFamily: "Golos"),
    labelLarge: TextStyle(
        fontSize: 20, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    labelMedium: TextStyle(
        fontSize: 16, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    labelSmall: TextStyle(
        fontSize: 12, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    displayLarge: TextStyle(
        fontSize: 32, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    displayMedium: TextStyle(
        fontSize: 36, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    displaySmall: TextStyle(
        fontSize: 40, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    titleLarge: TextStyle(
        fontSize: 50, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    titleMedium: TextStyle(
        fontSize: 45, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    titleSmall: TextStyle(
        fontSize: 40, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    bodyLarge: TextStyle(
        fontSize: 16, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    bodyMedium: TextStyle(
        fontSize: 14, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
    bodySmall: TextStyle(
        fontSize: 12, color: darkColorScheme.onPrimary, fontFamily: "Golos"),
  ),
  drawerTheme: DrawerThemeData(backgroundColor: darkColorScheme.primary),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: darkColorScheme.onPrimary,
      foregroundColor: darkColorScheme.onSecondary,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(color: darkColorScheme.onPrimary)),
      labelStyle: TextStyle(color: darkColorScheme.onPrimary),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkColorScheme.onPrimary))),
);

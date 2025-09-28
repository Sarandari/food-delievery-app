import 'package:flutter/material.dart';


final lightMode = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFFF4D4D),
    onPrimary: Colors.white,
    secondary: Color(0xFFFF7D7D),
    onSecondary: Colors.white,
    background: Colors.white,
    onBackground: Color(0xFF4F4F4F),
    surface: Colors.white,
    onSurface: Color(0xFF4F4F4F),
    error: Colors.red,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      fontSize: 31,
      fontWeight: FontWeight.bold,
      color: Color(0xFF4F4F4F),
    ),
    headlineLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.redAccent,
    ),
    titleLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: Color(0xFF4F4F4F),
    ),
    titleMedium: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w600,
      color: Color(0xFF4F4F4F),
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0xFF4F4F4F),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xFF4F4F4F),
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 11,
      color: Color(0xFF4F4F4F),
    ),
    labelLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
);

import 'package:flutter/material.dart';

class LuxuryTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFD4AF37), // Luxury Gold
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: const Color(0xFFFAF8F3), // Soft Cream
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF2C1810), // Deep Brown
        foregroundColor: const Color(0xFFD4AF37), // Gold
        elevation: 0,
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2C1810),
          fontFamily: 'Playfair',
        ),
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: const Color(0xFFD4AF37),
          fontFamily: 'Playfair',
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: const Color(0xFF333333),
          fontFamily: 'Lato',
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD4AF37),
          foregroundColor: const Color(0xFF2C1810),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AppTheme {
  // màu chủ đạo
  static const Color primaryBlue = Color(0xFF1C85FC);
  static const Color backgroundLight = Color(0xFFF4F7FA);
  static const Color textDark = Color(0xFF0B203A);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: primaryBlue,
      scaffoldBackgroundColor: backgroundLight,
      
      // cấu hình font chữ chung
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textDark),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      ),

      // cấu hình mặc định cho các nút bấm
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlue,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        primary: Color(0xFF22638d),
        secondary: Color(0xFF122d48),
      ),
      scaffoldBackgroundColor: Colors.grey.shade100,
      textTheme: TextTheme(
        titleMedium: GoogleFonts.montserrat(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.montserrat(
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.montserrat(color: Colors.white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 14),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

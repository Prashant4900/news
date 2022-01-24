import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return FlexThemeData.light(scheme: FlexScheme.gold).copyWith(
      scaffoldBackgroundColor: const Color(0xFFF7F7F7),
      cardTheme: const CardTheme(color: Color(0xFFEAEAEA)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return FlexThemeData.dark(scheme: FlexScheme.gold).copyWith(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme.apply(
              bodyColor: const Color(0xFFEEEEEE),
              displayColor: const Color(0xFFF3F1F5),
              decorationColor: Colors.red,
            ),
      ),
    );
  }
}

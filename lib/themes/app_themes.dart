import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  // 🌻 Gruvbox Light
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF458588),
      onPrimary: Color(0xFFfbf1c7),
      secondary: Color(0xFFb16286),
      onSecondary: Color(0xFFfbf1c7),
      tertiary: Color(0xFF689d6a),
      onTertiary: Color(0xFFfbf1c7),
      error: Color(0xFFcc241d),
      onError: Color(0xFFfbf1c7),
      background: Color(0xFFfbf1c7),
      onBackground: Color(0xFF3c3836),
      surface: Color(0xFFf2e5bc),
      onSurface: Color(0xFF3c3836),
    ),
    scaffoldBackgroundColor: const Color(0xFFfbf1c7),
    textTheme: GoogleFonts.latoTextTheme().apply(
      bodyColor: const Color(0xFF3c3836),
      displayColor: const Color(0xFF282828),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFebdbb2),
      foregroundColor: Color(0xFF3c3836),
      elevation: 0,
      centerTitle: true,
    ),
  );

  // 🌑 Gruvbox Dark
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF83a598),
      onPrimary: Color(0xFF282828),
      secondary: Color(0xFFd3869b),
      onSecondary: Color(0xFF282828),
      tertiary: Color(0xFF8ec07c),
      onTertiary: Color(0xFF282828),
      error: Color(0xFFfb4934),
      onError: Color(0xFFfbf1c7),
      background: Color(0xFF282828),
      onBackground: Color(0xFFebdbb2),
      surface: Color(0xFF3c3836),
      onSurface: Color(0xFFebdbb2),
    ),
    scaffoldBackgroundColor: const Color(0xFF282828),
    textTheme: GoogleFonts.latoTextTheme().apply(
      bodyColor: const Color(0xFFebdbb2),
      displayColor: const Color(0xFFfbf1c7),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF3c3836),
      foregroundColor: Color(0xFFebdbb2),
      elevation: 0,
      centerTitle: true,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'screens/auth_wrapper.dart';
import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eCommerce App',

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,

        // 🌻 Gruvbox Light Color Scheme
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: const Color(0xFF458588),
          // Blue
          onPrimary: const Color(0xFFfbf1c7),
          // Light background on blue
          secondary: const Color(0xFFb16286),
          // Purple
          onSecondary: const Color(0xFFfbf1c7),
          tertiary: const Color(0xFF689d6a),
          // Aqua
          onTertiary: const Color(0xFFfbf1c7),
          error: const Color(0xFFcc241d),
          // Red
          onError: const Color(0xFFfbf1c7),
          background: const Color(0xFFfbf1c7),
          // bg0
          onBackground: const Color(0xFF3c3836),
          // fg1
          surface: const Color(0xFFf2e5bc),
          // bg0_s
          onSurface: const Color(0xFF3c3836),
          // fg
          surfaceContainerHighest: const Color(0xFFebdbb2),
          // bg1
          surfaceContainerLow: const Color(0xFFf9f5d7),
          // bg0_h
          outline: const Color(0xFFa89984), // bg4
        ),

        scaffoldBackgroundColor: const Color(0xFFfbf1c7),
        // bg0

        // 🪶 Fonts
        textTheme: GoogleFonts.latoTextTheme().apply(
          bodyColor: const Color(0xFF3c3836), // fg
          displayColor: const Color(0xFF282828), // fg0
        ),

        // 🎨 Elevated Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF458588),
            // primary blue
            foregroundColor: const Color(0xFFfbf1c7),
            // text on button
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        // ✏️ Input Fields
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFFf2e5bc),
          // bg0_s
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFbdae93)), // bg3
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF458588), width: 2.0),
          ),
          labelStyle: const TextStyle(color: Color(0xFF504945)),
          // fg2
          hintStyle: const TextStyle(color: Color(0xFF7c6f64)), // fg4
        ),

        // 🃏 Cards
        cardTheme: CardThemeData(
          color: const Color(0xFFf2e5bc),
          // bg0_s
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias,
          shadowColor: const Color(0xFFa89984),
        ),

        // 📚 App Bar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFebdbb2),
          // bg1
          foregroundColor: Color(0xFF3c3836),
          // fg1
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xFF3c3836),
          ),
        ),
      ),

      home: const AuthWrapper(),
    );
  }
}

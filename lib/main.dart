import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// 1. Import the native splash package
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'screens/auth_wrapper.dart'; // 1. Import AuthWrapper
import 'package:ecommerce_app/providers/cart_provider.dart'; // 1. ADD THIS
import 'package:provider/provider.dart'; // 2. ADD THIS
import 'package:google_fonts/google_fonts.dart'; // 1. ADD THIS IMPORT

void main() async {
  // 1. Preserve the splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // 2. Initialize Firebase (from Module 1)
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // 1. This is the line we're changing

  runApp(
    // 2. We wrap our app in the provider
    ChangeNotifierProvider(
      // 3. This "creates" one instance of our cart
      create: (context) => CartProvider(),
      // 4. The child is our normal app
      child: const MyApp(),
    ),
  );

  // 4. Remove the splash screen after app is ready
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eCommerce App',

      // 1. --- THIS IS THE NEW, COMPLETE THEME ---
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,

        // 1. Color Scheme (Tokyo Night palette)
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7AA2F7),
          // Blue accent
          brightness: Brightness.dark,
          // Define brightness here ONLY
          background: const Color(0xFF1A1B26),
          // Night background
          surface: const Color(0xFF24283B),
          // Storm background
          primary: const Color(0xFF7AA2F7),
          // Blue
          secondary: const Color(0xFFBB9AF7),
          // Magenta accent
          tertiary: const Color(0xFF73DACA),
          // Greenish teal
          error: const Color(0xFFF7768E),
          // Red
          onPrimary: const Color(0xFF1A1B26),
          onSecondary: const Color(0xFF1A1B26),
          onTertiary: const Color(0xFF1A1B26),
          onError: Colors.white,
          onBackground: const Color(0xFFA9B1D6),
          // Text color
          onSurface: const Color(0xFFC0CAF5), // General text
        ),

        // 2. Scaffold background
        scaffoldBackgroundColor: const Color(0xFF1A1B26),

        // 3. Global font
        textTheme: GoogleFonts.latoTextTheme().apply(
          bodyColor: const Color(0xFFA9B1D6),
          displayColor: const Color(0xFFC0CAF5),
        ),

        // 4. Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF7AA2F7), // Primary blue
            foregroundColor: const Color(0xFF1A1B26), // Text on button
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),

        // 5. Input fields
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF24283B),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF414868)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF7AA2F7), width: 2.0),
          ),
          labelStyle: const TextStyle(color: Color(0xFFA9B1D6)),
        ),

        // 6. Cards
        cardTheme: CardThemeData(
          color: const Color(0xFF24283B),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias,
        ),

        // 7. App bar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF24283B),
          foregroundColor: Color(0xFFC0CAF5),
          elevation: 0,
          centerTitle: true,
        ),
      ),

      // --- END OF NEW THEME ---
      home: const AuthWrapper(),
    );
  }
}

import 'package:book_shop/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.slabo27pxTextTheme().copyWith(
          headlineLarge: GoogleFonts.limelight(fontSize: 60, height: 1),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

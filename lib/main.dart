import 'package:cath_play/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cath Play',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
            primary: const Color(0xFFE6E6E6),
            primaryContainer: const Color(0xFFFFFFFF),
            secondary: const Color(0xFF8653FF),
            secondaryContainer: const Color(0xFFE574CC),
            tertiary: const Color(0xFFFF162C),//rojo
        ),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
        ),
        appBarTheme: const AppBarTheme(
          shadowColor: Colors.transparent,
          foregroundColor: Color(0xFF8653FF),
          color: Color(0xFFE6E6E6),
        ),
      ),
      home: Login(),
    );
  }
}
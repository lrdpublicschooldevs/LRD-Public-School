import 'package:flutter/material.dart';
import 'package:myapp/splash_screen.dart';
// Import your WelcomePage file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LRD Public School',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(
          // Button 1 color
          buttonColor: Color(0xFFA62E2E),
        ),
        textTheme: const TextTheme(
          // Text style for font size 30, black color, font weight w700
          displayLarge: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          displayMedium: TextStyle(
            fontSize: 30,
            color: Color(0xFF888888),
            fontWeight: FontWeight.w700
          ),
          // Text style for font size 20, white color
          displaySmall: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          // Button 2 color
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF4A4A4A)),
          ),
        ),
      ),
      home: const SplashScreen(), // Set the SplashScreen as the home page initially
    );
  }
}





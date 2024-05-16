import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/theme.dart';
import 'package:myapp/Pages/DashBoard/dashboard.dart';
import 'package:myapp/splash_screen.dart';
// Import your WelcomePage file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'LRD Public School',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      // theme: ThemeData(
      //   buttonTheme: const ButtonThemeData(
      //     // Button 1 color
      //     buttonColor: Color(0xFFA62E2E),
      //   ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     // Button 2 color
      //     style: ButtonStyle(
      //       backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF4A4A4A)),
      //     ),
      //   ),
      // ),
      home: const DashboardPage(), // Set the SplashScreen as the home page initially
    );
  }
}

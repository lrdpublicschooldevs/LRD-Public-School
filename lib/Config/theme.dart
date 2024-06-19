import 'package:flutter/material.dart';
import 'package:myapp/Config/colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  // inputDecorationTheme: InputDecorationTheme(
  //   fillColor: dOnContainerColor,
  //   filled: true,
  //   border: UnderlineInputBorder(
  //     borderSide: BorderSide.none,
  //     borderRadius: BorderRadius.circular(10),
  //   ),
  // ),
  colorScheme: const ColorScheme.light(
    primary: dbuttonColor,
    onPrimary: dContainerColor,
    // background: dContainerColor,
    onBackground: dOnBackgroundColor,
    // primaryContainer: dContainerColor,
    // onPrimaryContainer: dContainerColor,
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(fontSize: 32, color: textBold, fontFamily: "Poppins", fontWeight: FontWeight.w600),
    displaySmall: TextStyle(fontSize: 30, color: textBold, fontFamily: "Poppins", fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontSize: 28, color: textBold, fontFamily: "Poppins", fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 26, color: textMedium, fontFamily: "Poppins", fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 24, color: textMedium, fontFamily: "Poppins", fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 18, color: textBold, fontFamily: "Poppins", fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 15, color: textMedium, fontFamily: "Poppins", fontWeight: FontWeight.w500),
    bodySmall: TextStyle(fontSize: 14, color: textLight, fontFamily: "Poppins", fontWeight: FontWeight.w500),
    labelLarge: TextStyle(fontSize: 18, color: textLight, fontFamily: "Poppins", fontWeight: FontWeight.w400),
    labelMedium: TextStyle(fontSize: 15, color: textLight, fontFamily: "Poppins", fontWeight: FontWeight.w300),
    labelSmall: TextStyle(fontSize: 12, color: textLight, fontFamily: "Poppins", fontWeight: FontWeight.w300),
  ),
);

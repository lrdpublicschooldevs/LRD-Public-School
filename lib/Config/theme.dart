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
    outline:  textBold,
    // background: dContainerColor,
    onBackground: dOnBackgroundColor,
    // primaryContainer: dContainerColor,
    // onPrimaryContainer: dContainerColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 36, color: textBold, fontFamily: "Poppins", fontWeight: FontWeight.w800),
    headlineMedium: TextStyle(fontSize: 32, color: textMedium, fontFamily: "Poppins", fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 24, color: Color(0xFFAFAFAF), fontFamily: "Poppins", fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 18, color: textBold, fontFamily: "Poppins", fontWeight: FontWeight.w800),
    bodyMedium: TextStyle(fontSize: 15, color: textMedium, fontFamily: "Poppins", fontWeight: FontWeight.w500),
    labelLarge: TextStyle(fontSize: 15, color: textMedium, fontFamily: "Poppins", fontWeight: FontWeight.w400),
    labelMedium: TextStyle(fontSize: 12, color: textBold, fontFamily: "Poppins", fontWeight: FontWeight.w500),
    labelSmall: TextStyle(fontSize: 10, color: textLight, fontFamily: "Poppins", fontWeight: FontWeight.w300),
  ),
);

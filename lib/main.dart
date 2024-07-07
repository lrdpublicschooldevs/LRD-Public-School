import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/theme.dart';
import 'Pages/TeacherPages/AttendanceMark/attendance.dart';


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
      home: AttendancePage(),
    );
  }
}

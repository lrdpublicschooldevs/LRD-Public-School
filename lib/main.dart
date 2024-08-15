import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/theme.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/dashboard.dart';
import 'package:myapp/Pages/Student_Page/Syllabus/SyllabusPage.dart';
import 'package:myapp/Widgets/splash_screen.dart';

import 'Pages/Student_Page/Syllabus/widgets/SyllabusViewPage.dart';
import 'Pages/Student_Page/official_Detail/OfficialDetail.dart';


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
      home: const SyllabusViewPage(),
    );
  }
}

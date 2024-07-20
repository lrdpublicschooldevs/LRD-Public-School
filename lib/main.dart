// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/theme.dart';
import 'package:myapp/Widgets/AcademyCalender.dart';
import 'package:myapp/Widgets/splash_screen.dart';
// import 'package:flutter/services.dart' show rootBundle;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final attendanceData =  parseAttendanceData(attendanceJson);
  // runApp(MyApp(attendanceData: attendanceData));
  runApp(const MyApp());
}

// Future<Map<DateTime, AttendanceStatus>> loadAttendanceData() async {
//   try {
//     final response = await rootBundle.loadString('assets/student_attendance_record.json');
//     final data = json.decode(response);
//     Map<DateTime, AttendanceStatus> attendanceData = {};

//     (data['attendance'] as Map<String, dynamic>).forEach((key, value) {
//       final date = DateTime.parse(key);
//       attendanceData[date] = AttendanceStatus.values.firstWhere(
//         (e) => e.toString() == 'AttendanceStatus.$value',
//         orElse: () => AttendanceStatus.unknown, // Handle unknown status
//       );
//     });

//     return attendanceData;
//   } catch (e) {
//     print("Error loading attendance data: $e");
//     return {};
//   }
// }

class MyApp extends StatelessWidget {
  // final Map<DateTime, AttendanceStatus> attendanceData;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'LRD Public School',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
      // AttendanceCalendar(attendanceData: attendanceData),
    );
  }
}

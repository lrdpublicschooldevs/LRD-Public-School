import 'package:flutter/material.dart';
import 'package:myapp/Pages/DashBoard/Widgets/Attendance.dart';
import 'package:myapp/Pages/DashBoard/Widgets/DashboardBody.dart';
import 'package:myapp/Pages/DashBoard/Widgets/DashboardHeader.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              DashboardHeader(),
              AttendanceCard(),
              const SizedBox(height: 10),
              DashboardBody()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/DashBoard/Widgets/Attendance.dart';
import 'package:myapp/Pages/DashBoard/Widgets/DashboardBody.dart';
import 'package:myapp/Pages/DashBoard/Widgets/DashboardHeader.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              SvgPicture.asset(
                AssetsIamge.bgDesignSVG,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    DashboardHeader(),
                    AttendanceCard(),
                    const SizedBox(height: 20),
                    DashboardBody(),
                    const SizedBox(height: 30)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/DashBoard/Widgets/Attendance.dart';
import 'package:myapp/Pages/DashBoard/Widgets/DashboardBody.dart';
import 'package:myapp/Pages/DashBoard/Widgets/DashboardHeader.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SvgPicture.asset(
              AssetsIamge.bgDesignSVG,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  DashboardHeader(),
                  const SizedBox(height: 20),
                  AttendanceCard(),
                  const SizedBox(height: 20),
                  DashboardBody(),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ],
        ));
  }
}

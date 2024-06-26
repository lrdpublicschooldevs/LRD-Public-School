import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/Attendance.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashboardBody.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashboardHeader.dart';

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
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 10),
                    child: DashboardHeader(),
                  ),
                  SizedBox(height: 15),
                  AttendanceCard(),
                  SizedBox(height: 15),
                  DashboardBody(),
                  SizedBox(height: 30)
                ],
              ),
            ],
          )),
    );
  }
}

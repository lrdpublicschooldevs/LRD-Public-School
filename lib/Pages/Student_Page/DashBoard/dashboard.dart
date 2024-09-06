import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/Attendance.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashboardBody.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashboardHeader.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/Fee.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Container(),
        ),
        body: Stack(
          children: [
            SvgPicture.asset(
              AssetsImage.bgDesignSVG,
              fit: BoxFit.fill,
              width: double.maxFinite,
              height: double.maxFinite,
            ),
            const Expanded(
              child: Column(
                children: [
                  Expanded(flex: 2, child: DashboardHeader()),
                  Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AttendanceCard(),
                          FeeCard()
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(flex: 6, child: DashboardBody()),
                ],
              ),
            ),
          ],
        ));
  }
}

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
        backgroundColor: Colors.white,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(0.0), child: Container()),
        body: Stack(
          children: [
            SvgPicture.asset(
              AssetsImage.bgDesignSVG,
              fit: BoxFit.fill,
              width: double.maxFinite,
              height: double.maxFinite,
            ),
            ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                  child: DashboardHeader(),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AttendanceCard(),
                      FeeCard()
                    ],
                  ),
                ),
                SizedBox(height: 15),
                DashboardBody(),
                SizedBox(height: 30)
              ],
            ),
          ],
        ));
  }
}

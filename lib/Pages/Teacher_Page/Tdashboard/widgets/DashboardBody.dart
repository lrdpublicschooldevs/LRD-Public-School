import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashBoardBox.dart';
import 'package:myapp/Pages/Teacher_Page/AttendanceMark/attendance.dart';
import 'package:myapp/Pages/Teacher_Page/HomeWork/homeworkPage.dart';
import 'package:myapp/Pages/Teacher_Page/Teacher%20Leave/TeacherLeave.dart';

class TDashboardBody extends StatelessWidget {
  const TDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      height: MediaQuery.of(context).size.height * 0.65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.8),
      ),
      child: Column(
        children: [
          Container(
            height: 35,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Center(
              child: Text(
                "DashBoard",
                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount;
                if (constraints.maxWidth < 600) {
                  // Mobile view
                  crossAxisCount = 3;
                } else if (constraints.maxWidth < 1200) {
                  // Tablet view
                  crossAxisCount = 5;
                } else {
                  // Desktop view
                  crossAxisCount = (constraints.maxWidth / 200).floor(); // Dynamically calculate columns
                }

                return GridView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    DashboardBox(context, () {}, AssetsImage.tClassMngSVG, "class Management"),
                    DashboardBox(context, () {}, AssetsImage.tStdMngSVG, "Student Management"),
                    DashboardBox(context, () {
                      Get.to(const AttendancePage());
                    }, AssetsImage.tAttdMarkingSVG, "Attendance Marking"),
                    DashboardBox(context, () {}, AssetsImage.tGradeBookSVG, "Gradebook"),
                    DashboardBox(context, () {
                      Get.to(const THomeWorkPage());
                    }, AssetsImage.tHomeworkMngSVG, "Homework Management"),
                    DashboardBox(context, () {}, AssetsImage.tContactParentSVG, "Contact Parent"),
                    DashboardBox(context, () {}, AssetsImage.dSyllabusSVG, "Syllabus "),
                    DashboardBox(context, () {}, AssetsImage.tPerformanceRprtSVG, "Performance Report"),
                    DashboardBox(context, () {}, AssetsImage.dLibrarySVG, "Library"),
                    DashboardBox(context, () {}, AssetsImage.dExamDatesheetSVG, "Exam Datesheet"),
                    DashboardBox(context, () {}, AssetsImage.dAcademyCalenderSVG, "Academic Calendar"),
                    DashboardBox(context, () {
                      Get.to(const TeacherLeavePage());
                    }, AssetsImage.tLeaveAplicationSVG, "Teacher Leave"),
                    DashboardBox(context, () {}, AssetsImage.dTimeTableSVG, "Time Table"),
                    DashboardBox(context, () {}, AssetsImage.dAskDoubtSVG, "Doubt Solving"),
                    DashboardBox(context, () {}, AssetsImage.dGallerySVG, "Gallery"),
                    DashboardBox(context, () {}, AssetsImage.dOfficialDetailsSVG, " Official Details"),
                    DashboardBox(context, () {}, AssetsImage.tChangePasswordSVG, "Change password"),
                    DashboardBox(context, () {}, AssetsImage.dLogoutSVG, "Logout"),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

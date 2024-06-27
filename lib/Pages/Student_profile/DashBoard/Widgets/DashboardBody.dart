import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';

import 'package:myapp/Pages/Student_profile/DashBoard/dashboardRoutes/LeaveForm.dart';
import 'package:myapp/Pages/Student_profile/Exam/ExamPage.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 500,
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
                  style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 20),
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
                    crossAxisCount = (constraints.maxWidth / 200)
                        .floor(); // Dynamically calculate columns
                  }

                  return GridView(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    children: [
                      DashboardBox(
                          context, () {}, AssetsIamge.dHomeworkSVG, "Homework"),
                      DashboardBox(context, () {}, AssetsIamge.dTransportSVG,
                          "Transport"),
                      DashboardBox(
                          context, () {}, AssetsIamge.dLibrarySVG, "Library"),
                      DashboardBox(context, () {}, AssetsIamge.dNotificationSVG,
                          "Notification"),
                      DashboardBox(context, () {
                        Get.to(ExamPage());
                      }, AssetsIamge.dExamDatesheetSVG, "Exam Sheet"),
                      DashboardBox(context, () {},
                          AssetsIamge.dAcademyCalenderSVG, "Academy\nCalender"),
                      DashboardBox(context, () {
                        Get.to(LeaveForm());
                      }, AssetsIamge.dStudentLeaveSVG, "Student Leave"),
                      DashboardBox(context, () {}, AssetsIamge.dTimeTableSVG,
                          "Time Table"),
                      DashboardBox(context, () {}, AssetsIamge.dAskDoubtSVG,
                          "Ask Doubt"),
                      DashboardBox(
                          context, () {}, AssetsIamge.dSyllabusSVG, "Syllabus"),
                      DashboardBox(
                          context, () {}, AssetsIamge.dGallerySVG, "Gallery"),
                      DashboardBox(context, () {},
                          AssetsIamge.dOfficialDetailsSVG, "Official Details"),
                      DashboardBox(context, () {}, AssetsIamge.dClassTeacherSVG,
                          "   Class\nTeachers"),
                      DashboardBox(context, () {}, AssetsIamge.dReportCardSVG,
                          "Report Card"),
                      DashboardBox(
                          context, () {}, AssetsIamge.dLogoutSVG, "Logout"),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget DashboardBox(BuildContext context, VoidCallback onTap, String iconPath,
      String iconName) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 35, // Fixed width
              height: 35, // Fixed height
            ),
            Text(
              iconName,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center, // Center align the text
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';

class TDashboardBody extends StatelessWidget {
  const TDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Container(
        height: 600,
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
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
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
                      DashboardBox(context, () {}, AssetsIamge.tClassMngSVG,
                          "class Management"),
                      DashboardBox(context, () {}, AssetsIamge.tStdMngSVG,
                          "Student Management"),
                      DashboardBox(context, () {}, AssetsIamge.tAttdMarkingSVG,
                          "Attendance Marking"),
                      DashboardBox(context, () {}, AssetsIamge.tGradeBookSVG,
                          "Gradebook"),
                      DashboardBox(context, () {}, AssetsIamge.tHomeworkMngSVG,
                          "Homework Management"),
                      DashboardBox(context, () {},
                          AssetsIamge.tContactParentSVG, "Contact Parent"),
                      DashboardBox(context, () {}, AssetsIamge.dSyllabusSVG,
                          "Syllabus "),
                      DashboardBox(
                          context,
                          () {},
                          AssetsIamge.tPerformanceRprtSVG,
                          "Performance Report"),
                      DashboardBox(
                          context, () {}, AssetsIamge.dLibrarySVG, "Library"),
                      DashboardBox(context, () {
                      }, AssetsIamge.dExamDatesheetSVG, "Exam Datesheet"),
                      DashboardBox(context, () {},
                          AssetsIamge.dAcademyCalenderSVG, "Academic Calendar"),
                      DashboardBox(context, () {
                      }, AssetsIamge.tLeaveAplicationSVG, "Teacher Leave"),
                      DashboardBox(context, () {}, AssetsIamge.dTimeTableSVG,
                          "Time Table"),
                      DashboardBox(context, () {}, AssetsIamge.dAskDoubtSVG,
                          "Doubt Solving"),
                      DashboardBox(
                          context, () {}, AssetsIamge.dGallerySVG, "Gallery"),
                      DashboardBox(context, () {},
                          AssetsIamge.dOfficialDetailsSVG, " Official Details"),
                      DashboardBox(context, () {},
                          AssetsIamge.tChangePasswordSVG, "Change password"),
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
        padding: const EdgeInsets.all(4),
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
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center, // Center align the text
            ),
          ],
        ),
      ),
    );
  }
}

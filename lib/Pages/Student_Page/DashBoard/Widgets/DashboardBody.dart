import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashBoardBox.dart';
import 'package:myapp/Pages/Student_Page/Exam/ExamPage.dart';
import 'package:myapp/Pages/Student_Page/HomeWork/HomeWorkPage.dart';
import 'package:myapp/Pages/Student_Page/Leave/LeaveForm.dart';
import 'package:myapp/Pages/Student_Page/Notification/NotificationPage.dart';
import 'package:myapp/Pages/Student_Page/Teacher%20Details/TeacherPage.dart';
import 'package:myapp/Pages/Student_Page/Transport/TransortPage.dart';
import 'package:myapp/Pages/Student_Page/ask_doubt/askDoubt.dart';
import 'package:myapp/Pages/Student_Page/official_Detail/OfficialDetail.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      height: 570,
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
            child: Center(
              child: Text(
                "DashBoard",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.only(left: 10, right: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: [
                DashboardBox(
                  context,
                  () {
                    Get.to(const HomeWorkPage());
                  },
                  AssetsIamge.dHomeworkSVG,
                  "Homework",
                ),
                DashboardBox(
                  context,
                  () {
                    Get.to(const TransportPage());
                  },
                  AssetsIamge.dTransportSVG,
                  "Transport",
                ),
                DashboardBox(
                  context,
                  () {},
                  AssetsIamge.dLibrarySVG,
                  "Library",
                ),
                DashboardBox(
                  context,
                  () {
                    Get.to(const NotificationPage1());
                  },
                  AssetsIamge.dNotificationSVG,
                  "Notification",
                ),
                DashboardBox(
                  context,
                  () {
                    Get.to(const ExamPage());
                  },
                  AssetsIamge.dExamDatesheetSVG,
                  "Exam Sheet",
                ),
                DashboardBox(
                  context,
                  () {},
                  AssetsIamge.dAcademyCalenderSVG,
                  "Academy\nCalender",
                ),
                DashboardBox(
                  context,
                  () {
                    Get.to(LeaveForm());
                  },
                  AssetsIamge.dStudentLeaveSVG,
                  "Student Leave",
                ),
                DashboardBox(
                  context,
                  () {},
                  AssetsIamge.dTimeTableSVG,
                  "Time Table",
                ),
                DashboardBox(
                  context,
                  () {
                    Get.to(const AskDoubtPage());
                  },
                  AssetsIamge.dAskDoubtSVG,
                  "Ask Doubt",
                ),
                DashboardBox(
                  context,
                  () {},
                  AssetsIamge.dSyllabusSVG,
                  "Syllabus",
                ),
                DashboardBox(
                  context,
                  () {},
                  AssetsIamge.dGallerySVG,
                  "Gallery",
                ),
                DashboardBox(
                  context,
                  () {
                    Get.to(OfficialDetailPage());
                  },
                  AssetsIamge.dOfficialDetailsSVG,
                  "Official Details",
                ),
                DashboardBox(
                  context,
                  () {
                    Get.to(const TeacherPage());
                  },
                  AssetsIamge.dClassTeacherSVG,
                  "   Class\nTeachers",
                ),
                DashboardBox(
                  context,
                  () {},
                  AssetsIamge.dReportCardSVG,
                  "Report Card",
                ),
                DashboardBox(
                  context,
                  () {},
                  AssetsIamge.dLogoutSVG,
                  "Logout",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

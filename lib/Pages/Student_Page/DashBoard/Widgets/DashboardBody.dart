import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashBoardBox.dart';
import 'package:myapp/Pages/Student_Page/Exam/ExamPage.dart';
import 'package:myapp/Pages/Student_Page/HomeWork/HomeWorkPage.dart';
import 'package:myapp/Pages/Student_Page/Leave/LeaveForm.dart';
import 'package:myapp/Pages/Student_Page/Library/LibraryPage.dart';
import 'package:myapp/Pages/Student_Page/Notification/NotificationPage.dart';
import 'package:myapp/Pages/Student_Page/Report/ReportCard.dart';
import 'package:myapp/Pages/Student_Page/Syllabus/SyllabusPage.dart';
import 'package:myapp/Pages/Student_Page/Teacher%20Details/TeacherPage.dart';
import 'package:myapp/Pages/Student_Page/Transport/TransortPage.dart';
import 'package:myapp/Pages/Student_Page/academy_Calender/AcademyCalender.dart';
import 'package:myapp/Pages/Student_Page/ask_doubt/askDoubt.dart';
import 'package:myapp/Pages/Student_Page/official_Detail/OfficialDetail.dart';
import 'package:myapp/Pages/Student_Page/timeTable/timeTablePage.dart';
import 'package:myapp/Pages/Welcome/welcome_page.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      height: MediaQuery.of(context).size.height * 0.5,
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
          const SizedBox(height: 10),
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
                    DashboardBox(context, () {
                      Get.to(const HomeWorkPage());
                    }, AssetsIamge.dHomeworkSVG, "Homework"),
                    DashboardBox(context, () {
                      Get.to(const TransportPage());
                    }, AssetsIamge.dTransportSVG, "Transport"),
                    DashboardBox(context, () {
                      Get.to(const LibraryPage());
                    }, AssetsIamge.dLibrarySVG, "Library"),
                    DashboardBox(context, () {
                      Get.to(const NotificationPage1());
                    }, AssetsIamge.dNotificationSVG, "Notification"),
                    DashboardBox(context, () {
                      Get.to(const ExamPage());
                    }, AssetsIamge.dExamDatesheetSVG, "Exam Sheet"),
                    DashboardBox(context, () {
                      Get.to(const AcademyCalenderPage());
                    }, AssetsIamge.dAcademyCalenderSVG, "Academy\nCalender"),
                    DashboardBox(context, () {
                      Get.to(LeaveForm());
                    }, AssetsIamge.dStudentLeaveSVG, "Student Leave"),
                    DashboardBox(context, () {
                      Get.to(const TimeTablePage());
                    }, AssetsIamge.dTimeTableSVG, "Time Table"),
                    DashboardBox(context, () {
                      Get.to(const AskDoubtPage());
                    }, AssetsIamge.dAskDoubtSVG, "Ask Doubt"),
                    DashboardBox(context, () {
                      Get.to(const SyllabusPage());
                    }, AssetsIamge.dSyllabusSVG, "Syllabus"),
                    DashboardBox(context, () {}, AssetsIamge.dGallerySVG, "Gallery"),
                    DashboardBox(context, () {
                      Get.to(const OfficialDetailPage());
                    }, AssetsIamge.dOfficialDetailsSVG, "Official Details"),
                    DashboardBox(context, () {
                      Get.to(const TeacherPage());
                    }, AssetsIamge.dClassTeacherSVG, "   Class\nTeachers"),
                    DashboardBox(context, () {
                      Get.to(const ReportCardPage());
                    }, AssetsIamge.dReportCardSVG, "Report Card"),
                    DashboardBox(context, () {
                      Get.to(const WelcomePage());
                    }, AssetsIamge.dLogoutSVG, "Logout"),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

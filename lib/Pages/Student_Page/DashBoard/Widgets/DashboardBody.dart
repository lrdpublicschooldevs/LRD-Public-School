import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/DashBoardBox.dart';
import 'package:myapp/Pages/Student_Page/Exam/ExamPage.dart';
import 'package:myapp/Pages/Student_Page/HomeWork/HomeWorkPage.dart';
import 'package:myapp/Pages/Student_Page/Report/ReportCard.dart';
import 'package:myapp/Pages/Student_Page/Syllabus/SyllabusPage.dart';
import 'package:myapp/Pages/Student_Page/Teacher%20Details/TeacherPage.dart';
import 'package:myapp/Pages/Student_Page/ask_doubt/askDoubt.dart';
import 'package:myapp/Pages/Student_Page/official_Detail/OfficialDetail.dart';
import 'package:myapp/Pages/Student_Page/timeTable/timeTablePage.dart';
import 'package:myapp/Pages/Wecome/WelcomePage.dart';
import '../../Leave/LeaveForm.dart';
import '../../Library/LibraryPage.dart';
import '../../Notification/NotificationPage.dart';
import '../../Transport/TransortPage.dart';
import '../../academy_Calender/AcademyCalender.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      height: MediaQuery.of(context).size.height * 0.55,
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
                if (constraints.maxWidth < 550) {
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
                    }, AssetsImage.dHomeworkSVG, "Homework"),
                    DashboardBox(context, () {
                      Get.to(const TransportPage());
                    }, AssetsImage.dTransportSVG, "Transport"),
                    DashboardBox(context, () {
                      Get.to(const LibraryPage());
                    }, AssetsImage.dLibrarySVG, "Library"),
                    DashboardBox(context, () {
                      Get.to(const NotificationPage1());
                    }, AssetsImage.dNotificationSVG, "Notification"),
                    DashboardBox(context, () {
                      Get.to(const ExamPage());
                    }, AssetsImage.dExamDatesheetSVG, "Exam Sheet"),
                    DashboardBox(context, () {
                      Get.to(const AcademyCalenderPage());
                    }, AssetsImage.dAcademyCalenderSVG, "Academy\nCalender"),
                    DashboardBox(context, () {
                      Get.to(LeaveForm());
                    }, AssetsImage.dStudentLeaveSVG, "Student Leave"),
                    DashboardBox(context, () {
                      Get.to(const TimeTablePage());
                    }, AssetsImage.dTimeTableSVG, "Time Table"),
                    DashboardBox(context, () {
                      Get.to(const AskDoubtPage());
                    }, AssetsImage.dAskDoubtSVG, "Ask Doubt"),
                    DashboardBox(context, () {
                      Get.to(const SyllabusPage());
                    }, AssetsImage.dSyllabusSVG, "Syllabus"),
                    DashboardBox(context, () {}, AssetsImage.dGallerySVG, "Gallery"),
                    DashboardBox(context, () {
                      Get.to(const OfficialDetailPage());
                    }, AssetsImage.dOfficialDetailsSVG, "Official Details"),
                    DashboardBox(context, () {
                      Get.to(const TeacherPage());
                    }, AssetsImage.dClassTeacherSVG, "   Class\nTeachers"),
                    DashboardBox(context, () {
                      Get.to(const ReportCardPage());
                    }, AssetsImage.dReportCardSVG, "Report Card"),
                    DashboardBox(context, () {
                      Get.to(const WelcomePage());
                    }, AssetsImage.dLogoutSVG, "Logout"),
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

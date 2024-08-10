import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Widgets/Teacher_Page/AttendanceMark/widgets/AttendanceCard.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Attendance",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
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
              SizedBox(height: 5),
              TAttendanceCard(
                subject: 'Mathematics',
                time: '08:00am - 08:40am',
                classInfo: 'Class: 3A',
                period: 'Period 1',
              ),
              SizedBox(height: 5),
              TAttendanceCard(
                subject: 'Social Science',
                time: '08:40am - 09:20am',
                classInfo: 'Class: 4B',
                period: 'Period 2',
              ),
              SizedBox(height: 5),
              TAttendanceCard(
                subject: 'Mathematics',
                time: '09:20am - 10:00am',
                classInfo: 'Class: 5B',
                period: 'Period 3',
              ),
              SizedBox(height: 5),
              TAttendanceCard(
                subject: 'Mathematics',
                time: '10:00am - 10:40am',
                classInfo: 'Class: 5A',
                period: 'Period 4',
              ),
              SizedBox(height: 5),
              TAttendanceCard(
                subject: 'Social Science',
                time: '11:20am - 12:00pm',
                classInfo: 'Class: 3B',
                period: 'Period 5',
              ),
              SizedBox(height: 5),
              TAttendanceCard(
                subject: 'Mathematics',
                time: '12:00pm - 12:40pm',
                classInfo: 'Class: 6A',
                period: 'Period 6',
              ),
              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}


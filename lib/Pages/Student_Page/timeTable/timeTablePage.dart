import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/timeTable/widgets/timeTableBox.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Time Table",
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
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(250, 225, 225, 0.6),
                ),
                child: Column(
                  children: [
                    DatePicker(
                      DateTime.now(),
                      height: 75,
                      width: 45,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Theme.of(context).colorScheme.primary,
                      dateTextStyle: const TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    const SizedBox(height: 15),
                    const TimeTableBox(
                      subjectName: "Science",
                      time: "08:15 AM - 08:45 Pm",
                      teacherName: "Teacher Name",
                      period: "1",
                    ),
                    const SizedBox(height: 5),
                    const TimeTableBox(
                      subjectName: "Science",
                      time: "08:15 AM - 08:45 Pm",
                      teacherName: "Teacher Name",
                      period: "1",
                    ),
                    const SizedBox(height: 5),
                    const TimeTableBox(
                      subjectName: "Science",
                      time: "08:15 AM - 08:45 Pm",
                      teacherName: "Teacher Name",
                      period: "1",
                    ),
                    const SizedBox(height: 5),
                    const TimeTableBox(
                      subjectName: "Science",
                      time: "08:15 AM - 08:45 Pm",
                      teacherName: "Teacher Name",
                      period: "1",
                    ),
                    const SizedBox(height: 5),
                    const TimeTableBox(
                      subjectName: "Science",
                      time: "08:15 AM - 08:45 Pm",
                      teacherName: "Teacher Name",
                      period: "1",
                    ),
                    const SizedBox(height: 5),
                    const TimeTableBox(
                      subjectName: "Science",
                      time: "08:15 AM - 08:45 Pm",
                      teacherName: "Teacher Name",
                      period: "1",
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

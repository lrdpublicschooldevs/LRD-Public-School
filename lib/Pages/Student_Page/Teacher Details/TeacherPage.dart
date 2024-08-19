import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Teacher%20Details/widgets/TeacherDetailsBox.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Teacher Detail's",
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
            AssetsImage.bgDesignSVG,
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: ListView(
              children: const [
                TeacherDetailBox(
                  teacherName: "Sudhir Kumar",
                  mobileNo: "8899887799",
                  emailId: "sudhir@gmail.com",
                  subjectName: "Mathematics",
                  cabinNo: "1111",
                ),
                TeacherDetailBox(
                  teacherName: "Suraj Kumar",
                  mobileNo: "8899887799",
                  emailId: "suraj@gmail.com",
                  subjectName: "English",
                  cabinNo: "1112",
                ),
                TeacherDetailBox(
                  teacherName: "Pankaj Kumar",
                  mobileNo: "8899887799",
                  emailId: "pankaj@gmail.com",
                  subjectName: "Hindi",
                  cabinNo: "1113",
                ),
                TeacherDetailBox(
                  teacherName: "Piyush Gupta",
                  mobileNo: "8899887799",
                  emailId: "piyush@gmail.com",
                  subjectName: "Science",
                  cabinNo: "1114",
                ),
                SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}

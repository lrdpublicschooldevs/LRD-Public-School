import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/academy_Calender/widgets/AcademyLabel.dart';
import 'package:myapp/Pages/Student_Page/academy_Calender/widgets/academyBox.dart';

class AcademyCalenderPage extends StatelessWidget {
  const AcademyCalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> studentDetails = [
      {
        "text": "Father's Name : ",
        "detail": "name"
      },
      {
        "text": "Father's Occ. : ",
        "detail": "Services"
      },
      {
        "text": "Father's Mobile : ",
        "detail": "8899889988"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Academy Calender",
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
          AcademyBox()
        ],
      ),
    );
  }
}

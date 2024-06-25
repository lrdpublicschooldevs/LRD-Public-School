import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/StudentEditProfile.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentHeader.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentEditBox.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Student Profile",
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
              const StudentHeader(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(250, 225, 225, 0.6),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "User Detail's",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width * 0.8,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            StudentEditDetail(text: "Academic Year: ", detail: "2024-25"),
                            SizedBox(height: 15),
                            StudentEditDetail(text: "Date of Birth : ", detail: "24/03/2023"),
                            SizedBox(height: 15),
                            StudentEditDetail(text: "Date of Admission : ", detail: "24/03/2023"),
                            SizedBox(height: 15),
                            StudentEditDetail(text: "Father's Name : ", detail: "XYZZZZZ"),
                            SizedBox(height: 15),
                            StudentEditDetail(text: "Mother's Name : ", detail: "XYZZZZZ"),
                            SizedBox(height: 15),
                            StudentEditDetail(text: "Student Email : ", detail: "example@gmail.com"),
                            SizedBox(height: 15),
                            StudentEditDetail(text: "Contact Number : ", detail: "9999999999"),
                            SizedBox(height: 15),
                            StudentEditDetail(text: "Address : ", detail: "xyzzzzz"),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PrimaryBtn(
                                  btnName: "Edit Profile",
                                  ontap: () {
                                    Get.to(StudentEditProfile());
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

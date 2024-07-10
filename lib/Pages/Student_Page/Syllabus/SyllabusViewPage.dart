import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentEditBox.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class SyllabusViewPage extends StatelessWidget {
  const SyllabusViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "View Syllabus",
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
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(250, 225, 225, 0.6),
                ),
                child: Column(
                  children: [
                    Text("5th", style: Theme.of(context).textTheme.bodyLarge),
                    Text("Mathematics", style: Theme.of(context).textTheme.bodyLarge),
                    const Divider(
                      height: 1,
                      color: Colors.black45,
                    ),
                    const StudentEditDetail(text: "Lesson 1", detail: "The Fish Tale"),
                    const StudentEditDetail(text: "Lesson 2", detail: "Shapes & Angles"),
                    const StudentEditDetail(text: "Lesson 3", detail: "How many Squares?"),
                    const StudentEditDetail(text: "Lesson 4", detail: "Parts & Wholes"),
                    const StudentEditDetail(text: "Lesson 5", detail: "Does it look the Same?"),
                    const StudentEditDetail(text: "Lesson 6", detail: "Be my Multiple, I’ll be your Factor"),
                    const StudentEditDetail(text: "Lesson 7", detail: "Can you see the Pattern?"),
                    const StudentEditDetail(text: "Lesson 8", detail: "Mapping your Way"),
                    const StudentEditDetail(text: "Lesson 9", detail: "Boxes & Sketches "),
                    const StudentEditDetail(text: "Lesson 10", detail: "Tenths & Hundredths"),
                    const SizedBox(height: 10),
                    PrimaryBtn(btnName: "Download", ontap: () {})
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

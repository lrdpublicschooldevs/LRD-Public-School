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
            AssetsImage.bgDesignSVG,
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
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
                    Text("5th", style: Theme.of(context).textTheme.headlineMedium),
                    Text("Mathematics", style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 10),
                    const Divider(height: 1, color: Colors.black45),
                    const SizedBox(height: 15),
                    const StudentEditDetail(text: "Lesson 1", detail: "The Fish Tale"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 2", detail: "Shapes & Angles"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 3", detail: "How many Squares?"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 4", detail: "Parts & Wholes"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 5", detail: "Does it look the Same?"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 6", detail: "Be my Multiple, I’ll be your Factor"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 7", detail: "Can you see the Pattern?"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 8", detail: "Mapping your Way"),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 9", detail: "Boxes & Sketches "),
                    const SizedBox(height: 5),
                    const StudentEditDetail(text: "Lesson 10", detail: "Tenths & Hundredths"),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PrimaryBtn(btnName: "Download", ontap: () {}),
                      ],
                    )
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

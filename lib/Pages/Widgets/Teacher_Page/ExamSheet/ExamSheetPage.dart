import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Widgets/customDropDown.dart';
import 'package:myapp/Widgets/dateTimePick.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class ExamSheetPage extends StatelessWidget {
  const ExamSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Exam Sheet",
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
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(250, 225, 225, 0.6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text("Exam Type", style: Theme.of(context).textTheme.bodyLarge),
                    const CustomDropdown(items: [
                      {
                        'value': 'Mid Term 1',
                        'label': 'Mid Term 1'
                      },
                      {
                        'value': 'Mid Term 2',
                        'label': 'Mid Term 1'
                      },
                      {
                        'value': 'Final Exam',
                        'label': 'Final Exam'
                      },
                      {
                        'value': 'Class Test',
                        'label': 'Class Test'
                      },
                      {
                        'value': 'Mock Test',
                        'label': 'Mock Test'
                      },
                    ], hint: "-- Select Exam Type --"),
                    const SizedBox(height: 15),
                    Text("Exam Date", style: Theme.of(context).textTheme.bodyLarge),
                    const DateTimePick(),
                    const SizedBox(height: 15),
                    Text("Subject", style: Theme.of(context).textTheme.bodyLarge),
                    const CustomDropdown(items: [
                      {
                        'value': 'English',
                        'label': 'English'
                      },
                      {
                        'value': 'Computer',
                        'label': 'Computer'
                      },
                      {
                        'value': 'Mathematics',
                        'label': 'Mathematics'
                      },
                      {
                        'value': 'English',
                        'label': 'English'
                      },
                    ], hint: "-- Select Subject --"),
                    const SizedBox(height: 15),
                    Text("Period", style: Theme.of(context).textTheme.bodyLarge),
                    const CustomDropdown(items: [
                      {
                        'value': '1st',
                        'label': '1st'
                      },
                      {
                        'value': '2nd',
                        'label': '2nd'
                      },
                      {
                        'value': '3rd',
                        'label': '3rd'
                      },
                      {
                        'value': '4th',
                        'label': '4th'
                      },
                    ], hint: "-- Select Period --"),
                    const SizedBox(height: 15),
                    Text("Duration", style: Theme.of(context).textTheme.bodyLarge),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter time duration",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      keyboardType: TextInputType.multiline,
                      inputFormatters: [],
                    ),
                    const SizedBox(height: 30),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      PrimaryBtn(
                        btnName: "Add Exam sheet",
                        ontap: () {},
                      ),
                    ]),
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

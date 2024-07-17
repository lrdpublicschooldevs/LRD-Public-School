import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Pages/Student_Page/Syllabus/widgets/SyllabusViewPage.dart';
import 'package:myapp/Widgets/customDropDown.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class SyllabusBox extends StatefulWidget {
  const SyllabusBox({super.key});

  @override
  State<SyllabusBox> createState() => _SyllabusBoxState();
}

class _SyllabusBoxState extends State<SyllabusBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Class",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const CustomDropdown(items: [
            {
              'value': '1',
              'label': '1'
            },
            {
              'value': '2',
              'label': '2'
            },
            {
              'value': '3',
              'label': '3'
            },
            {
              'value': '4',
              'label': '4'
            },
          ], hint: "Choose Class"),
          const SizedBox(height: 15),
          Text(
            "Select Subjects",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const CustomDropdown(items: [
            {
              'value': 'science',
              'label': 'Science'
            },
            {
              'value': 'english',
              'label': 'English'
            },
            {
              'value': 'mathematics',
              'label': 'Mathematics'
            },
            {
              'value': 'computer',
              'label': 'Computer'
            },
          ], hint: "Choose Subject"),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryBtn(
                  btnName: "Preview",
                  ontap: () {
                    Get.to(() => const SyllabusViewPage());
                  }),
            ],
          )
        ],
      ),
    );
  }
}

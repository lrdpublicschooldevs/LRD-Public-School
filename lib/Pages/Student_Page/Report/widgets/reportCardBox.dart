import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentEditBox.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class ReportCardBox extends StatelessWidget {
  const ReportCardBox({super.key});

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
        children: [
          Text(
            "Academic Report",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Divider(height: 1, color: Colors.black),
          const SizedBox(height: 10),
          const StudentEditDetail(text: "Student Name :", detail: "Monu Raj"),
          const StudentEditDetail(text: "Father's Name :", detail: "Pankaj Kumar"),
          const StudentEditDetail(text: "Mother's Name :", detail: "Rani Kumari"),
          const StudentEditDetail(text: "Date of Birth :", detail: "17/03/2002"),
          const StudentEditDetail(text: "Roll No :", detail: "21BTCSE1111"),
          const StudentEditDetail(text: "Admission No :", detail: "222331133342"),
          const SizedBox(height: 15),
          Text(
            "Scholastic Areas:",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Divider(height: 1, color: Colors.black),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Subjects",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              ),
              Expanded(
                child: Text(
                  "  Unit 1\n50 Marks",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              ),
              Expanded(
                child: Text(
                  "  Unit 2\n50 Marks",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              ),
              Expanded(
                child: Text(
                  "Final Test 100 Marks",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          const SizedBox(height: 15),
          const StudentEditDetail(text: "Percentage :", detail: "75%"),
          const SizedBox(height: 10),
          const StudentEditDetail(text: "Result :", detail: "Pass%"),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryBtn(btnName: "Download", ontap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}

Widget textLabel(BuildContext context, String subjectName, String mark1, String mark2, String finalMark) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        subjectName,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        mark1,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        mark2,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        finalMark,
        style: Theme.of(context).textTheme.bodyMedium,
      )
    ],
  );
}

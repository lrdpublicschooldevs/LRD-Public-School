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
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const StudentEditDetail(text: "Student Name :", detail: "Monu Raj"),
          const StudentEditDetail(text: "Father's Name :", detail: "Pankaj Kumar"),
          const StudentEditDetail(text: "Mother's Name :", detail: "Rani Kumari"),
          const StudentEditDetail(text: "Date of Birth :", detail: "17/03/2002"),
          const StudentEditDetail(text: "Roll No :", detail: "21BTCSE1111"),
          const StudentEditDetail(text: "Admission No :", detail: "222331133342"),
          Text(
            "Scholastic Areas:",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Row(
            children: [
              Text(
                "Subjects",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Unit 1\n50 Marks",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Unit 2\n50 Marks",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Final Marks\n100 Marks",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          textLabel(context, "English", "40", "50", "80 (A+)"),
          const SizedBox(height: 10),
          const StudentEditDetail(text: "Percentage :", detail: "75%"),
          const SizedBox(height: 10),
          const StudentEditDetail(text: "Result :", detail: "75%"),
          const SizedBox(height: 10),
          PrimaryBtn(btnName: "Download", ontap: () {}),
        ],
      ),
    );
  }
}

Widget textLabel(BuildContext context, String subjectName, String mark1, String mark2, String finalMark) {
  return Row(
    children: [
      Text(
        subjectName,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      Text(
        mark1,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      Text(
        mark2,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      Text(
        finalMark,
        style: Theme.of(context).textTheme.bodySmall,
      )
    ],
  );
}

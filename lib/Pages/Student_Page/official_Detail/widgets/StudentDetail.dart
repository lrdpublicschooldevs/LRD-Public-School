import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentEditBox.dart';

class OfficialStudentDetail extends StatelessWidget {
  const OfficialStudentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "iiii";
    final List<Map<String, String>> studentDetails = [
      {
        "text": "Enrollment No. : ",
        "detail": name
      },
      {
        "text": "Admission Date. : ",
        "detail": "24 March 2020"
      },
      {
        "text": "Admission Class : ",
        "detail": "3rd"
      },
      {
        "text": "Current Class : ",
        "detail": "7th"
      },
      {
        "text": "Roll No. : ",
        "detail": "03"
      },
      {
        "text": "Student Email : ",
        "detail": "student@gmail.com"
      },
      {
        "text": "Hostel : ",
        "detail": "No"
      },
      {
        "text": "Transport : ",
        "detail": "Yes"
      },
      {
        "text": "Status : ",
        "detail": "Active"
      },
      {
        "text": "Address : ",
        "detail": "xyz villa, Bihar, India, 803322"
      },
    ];
    final currentWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = currentWidth>1000;
    final bool isTablet = currentWidth>600;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          width: isDesktop ? 600 : (isTablet ? 400 : double.infinity),
          margin: const EdgeInsets.only(right: 20, left: 20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(250, 225, 225, 0.6),
          ),
          child: Column(

            children: [
              Text("Student Detail's", style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 10),
              const Divider(color: Colors.black, height: 1),
              const SizedBox(height: 15),
              ...studentDetails.map((detail) => Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          detail["text"]!,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          detail["detail"]!,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Control spacing between entries
                ],
              )),
            ],
          ),
        ),
      ),
    );



  }
}

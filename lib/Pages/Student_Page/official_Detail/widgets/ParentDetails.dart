import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentEditBox.dart';

class OfficialParentDetail extends StatelessWidget {
  const OfficialParentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "XYZ";
    final List<Map<String, String>> studentDetails = [
      {
        "text": "Father's Name : ",
        "detail": name
      },
      {
        "text": "Father's Occ. : ",
        "detail": "Services"
      },
      {
        "text": "Father's Mobile : ",
        "detail": "8899889988"
      },
      {
        "text": "Mother's Name : ",
        "detail": "7th"
      },
      {
        "text": "Mother's Occ. : ",
        "detail": "House Wife"
      },
      {
        "text": "Mother's Phone : ",
        "detail": "8899889988"
      },
    ];
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        children: [
          Text("Parent Detail's", style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 10),
          Container(height: 1, width: MediaQuery.of(context).size.width * 0.8, color: Colors.black),
          const SizedBox(height: 15),
          ...studentDetails.map((detail) => Column(
                children: [
                  StudentEditDetail(text: detail["text"]!, detail: detail["detail"]!),
                  const SizedBox(height: 10),
                ],
              )),
        ],
      ),
    );
  }
}

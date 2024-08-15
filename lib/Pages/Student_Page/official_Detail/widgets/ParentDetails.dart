import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentEditBox.dart';

class OfficialParentDetail extends StatelessWidget {
  const OfficialParentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "XYZ";
    final List<Map<String, String>> studentDetails = [
      {"text": "Father's Name : ", "detail": name},
      {"text": "Father's Occ. : ", "detail": "Services"},
      {"text": "Father's Mobile : ", "detail": "8899889988"},
      {"text": "Mother's Name : ", "detail": "7th"},
      {"text": "Mother's Occ. : ", "detail": "House Wife"},
      {"text": "Mother's Phone : ", "detail": "8899889988"},
    ];
    final currentWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = currentWidth > 1000;
    final bool isTablet = currentWidth > 600;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
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
              Text("Parent Detail's",
                  style: Theme.of(context).textTheme.headlineMedium),
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
                      const SizedBox(height: 10),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

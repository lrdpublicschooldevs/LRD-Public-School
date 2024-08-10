import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Widgets/Student_Page/Student_profile/Widgets/studentEditBox.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Book Detail's",
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
                    Text(
                      "Book Information",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.black, height: 1),
                    const SizedBox(height: 15),
                    const StudentEditDetail(text: "Serial No :", detail: "#28780"),
                    const SizedBox(height: 10),
                    const StudentEditDetail(text: "Book Name :", detail: "xyxxzz"),
                    const SizedBox(height: 10),
                    const StudentEditDetail(text: "Issued on :", detail: "27 July 2024, Thursday"),
                    const SizedBox(height: 10),
                    const StudentEditDetail(text: "Returned on :", detail: "05 June 2024, Friday"),
                    const SizedBox(height: 10),
                    const StudentEditDetail(text: "Due Date :", detail: "04 June 2024, Thursday"),
                    const SizedBox(height: 10),
                    const StudentEditDetail(text: "Fine No:", detail: "10"),
                    const SizedBox(height: 10),
                    const StudentEditDetail(text: "Paid :", detail: "Yes"),
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

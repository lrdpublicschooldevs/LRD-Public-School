import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Notification/widgets/NotificationBox.dart';

class NotificationPage1 extends StatelessWidget {
  const NotificationPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Notifications",
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
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListView(
              children: [
                NotificationBox(
                  labelColor: Colors.yellow.shade300,
                  labelName: "  Attendance  ",
                  date: "25 June 2024",
                  time: "08:00 AM",
                  message: "Attendance of Data Algorithm (21BG3737) is less than 75%",
                ),
                const SizedBox(height: 10),
                NotificationBox(
                  labelColor: Colors.yellow.shade300,
                  labelName: "  Notice  ",
                  date: "20 June 2024",
                  time: "08:00 AM",
                  message: "Tomorrow class will be suspended for the occasion of Mahashivratri.",
                ),
                const SizedBox(height: 10),
                NotificationBox(
                  labelColor: Colors.yellow.shade300,
                  labelName: "  Birthday Wish  ",
                  date: "16 June 2024",
                  time: "08:00 AM",
                  message: "Dear Student, wishing you a very happy birthday. Always keep your goals in mind, learn something new everyday and make your life a great sucess",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

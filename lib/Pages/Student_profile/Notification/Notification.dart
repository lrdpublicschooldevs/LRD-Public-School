import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Notification/widgets/NotificationBox.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
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
          onTap: () {},
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsIamge.bgDesignSVG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListView(
              children: [
                NotificationBox(
                  labelColor: Colors.orange.shade200,
                  labelName: "  Attenadence  ",
                  date: "25 June 2024",
                  time: "08:00 AM",
                  message: "Attendance of Data Structure Algorithm (21BTCSE1037) is less than 75%",
                ),
                const SizedBox(height: 10),
                NotificationBox(
                  labelColor: Colors.green.shade200,
                  labelName: "  Notice  ",
                  date: "20 June 2024",
                  time: "08:00 AM",
                  message: "Tomorrow class will be suspended for the occasion of Mahashivratri",
                ),
                const SizedBox(height: 10),
                NotificationBox(
                  labelColor: Colors.yellow.shade200,
                  labelName: "  Birthday Wish  ",
                  date: "15 June 2024",
                  time: "08:00 AM",
                  message: "Dear Student, wishing you a very happy birthday. Always keep your goals in mind, learn something new everyday and make your life a great sucess.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

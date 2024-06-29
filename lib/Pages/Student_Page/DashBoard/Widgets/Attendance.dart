import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/CircleProgressBar.dart';
import 'package:myapp/Pages/Student_Page/attendance/attendancePage.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.8),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: 30,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Attendence",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
                const Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 22,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 30,
                      width: 170,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Text(
                        "April Attendance : 75%",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 30,
                      width: 170,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Text(
                        "Total Attendance : 90%",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        PrimaryBtn(
                            btnName: "More Details",
                            ontap: () {
                              Get.to(const AttendancePage());
                            }),
                        const SizedBox(width: 10),
                        // PrimaryBtn(btnName: " Apr ", ontap: () {})
                      ],
                    )
                  ],
                ),
                const SizedBox(width: 20),
                const MyProgressIndicator(percent: 0.75, lable: " 75% \n April"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/Pages/DashBoard/Widgets/CircleProgressBar.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(250, 225, 225, 0.8),
        ),
        child: Column(
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Attendence",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                    ),
                    Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Attendance : 90%",
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
                          "Attendance : 90%",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          PrimaryBtn(btnName: "More Details", ontap: () {}),
                          const SizedBox(width: 10),
                          // PrimaryBtn(btnName: " Apr ", ontap: () {})
                        ],
                      )
                    ],
                  ),
                ),
                MyProgressIndicator(percent: 0.75, lable: " 75% \n April"),
                SizedBox(width: 5)
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

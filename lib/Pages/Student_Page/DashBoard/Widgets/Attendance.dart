import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/CircleProgressBar.dart';
import 'package:myapp/Pages/Student_Page/attendance/attendancePage.dart';
import 'package:myapp/Widgets/responsiveLayout.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final w = Responsive.width(context);
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 15),
      width: isMobile ? w * .85 : 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.8),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: 30,
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
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        height: 30,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "April Attendance : 75%",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        height: 30,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "Total Attendance : 90%",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const AttendancePage());
                            },
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              child: Center(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  "More Detail",
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),

                          // PrimaryBtn(btnName: " Apr ", ontap: () {}),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const MyProgressIndicator(percent: 0.75, lable: " 75% \n April")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/CircleProgressBar.dart';
import 'package:myapp/Pages/Student_Page/Exam/ExamPage.dart';
import 'package:myapp/Pages/Student_Page/Fee/FeePage.dart';
import 'package:myapp/Widgets/responsiveLayout.dart';

class FeeCard extends StatelessWidget {
  const FeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final w = Responsive.width(context);
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 5),
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
                  "Fee Detail's",
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
                        height: 23,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          " Total Fee : 100",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Container(
                        height: 23,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              " Paid : 750",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "36 ago ",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 7),
                      Container(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                        height: 23,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                "Pending : 250",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                "7 day rem",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 7),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const FeePage());
                            },
                            child: Container(
                              height: 35,
                              width: w * .35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              child: Center(
                                child: Text(
                                  "More Detail",
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          // PrimaryBtn(btnName: " Apr ", ontap: () {})
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const MyProgressIndicator(percent: 0.75, lable: " 75% \n April"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

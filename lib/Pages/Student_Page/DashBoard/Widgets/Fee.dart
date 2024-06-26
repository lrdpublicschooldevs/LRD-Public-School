import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/Widgets/CircleProgressBar.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class FeeCard extends StatelessWidget {
  const FeeCard({super.key});

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
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 23,
                      width: 170,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Text(
                            "Total Fee : 100",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    Container(
                      height: 23,
                      width: 170,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Paid : 750",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            "36 ago",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    Container(
                      height: 23,
                      width: 170,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Pending : 250",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            "7 day rem",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        PrimaryBtn(btnName: "More Details", ontap: () {}),
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

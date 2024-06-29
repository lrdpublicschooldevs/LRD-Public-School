import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_profile/DashBoard/Widgets/CircleProgressBar.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCard(
            context,
            "Attendance",
            "April Attendance : 90%",
            "Total Attendance : 75%",
            "More Details",
            "April",
            const MyProgressIndicator(percent: 0.75, lable: "75% \nApril"),
          ),
          buildCard(
            context,
            "Fee Details",
            "Total Fee : 1000",
            "Paid : 750",
            "More Details",
            "Pay Online",
            const MyProgressIndicator(percent: 0.75, lable: "75% \nPaid"),
          ),
        ],
      ),
    );
  }

  Widget buildCard(
      BuildContext context,
      String title,
      String detail1,
      String detail2,
      String button1Text,
      String button2Text,
      Widget progressIndicator,
      ) {
    return Container(
      width: 370,
      margin: const EdgeInsets.all(10),
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(
                    Icons.info,
                    color: Colors.white,
                    size: 22,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildDetailContainer(context, detail1),
                    const SizedBox(height: 10),
                    buildDetailContainer(context, detail2),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        PrimaryBtn(btnName: button1Text, ontap: () {},wd: 140,),
                        const SizedBox(width: 10),
                        PrimaryBtn(btnName: button2Text, ontap: () {},wd: 110,),
                      ],
                    ),
                  ],
                ),
              ),
              progressIndicator,
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildDetailContainer(BuildContext context, String text) {
    return Container(
      height: 40,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}

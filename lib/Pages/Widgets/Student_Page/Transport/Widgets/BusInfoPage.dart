import 'package:flutter/material.dart';
import 'package:myapp/Pages/Widgets/Student_Page/Student_profile/Widgets/studentEditBox.dart';

class BusInfoPage extends StatelessWidget {
  const BusInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(250, 225, 225, 0.6),
        ),
        child: Column(
          children: [
            Text(
              "Bus Information",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.black, height: 1),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Bus Name : ", detail: "Shanapur - 34"),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Bus Number : ", detail: "UK18QB5857"),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Bus Stop Name : ", detail: "Shivpur"),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Pick up Time : ", detail: "08:20 AM"),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Drop Point : ", detail: "04:50 PM"),
          ],
        ),
      ),
    );
  }
}

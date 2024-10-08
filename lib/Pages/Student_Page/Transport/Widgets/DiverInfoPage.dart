import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/Widgets/studentEditBox.dart';

class DriverInfoPage extends StatelessWidget {
  const DriverInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(250, 225, 225, 0.6),
        ),
        child: Column(
          children: [
            Text(
              "Driver's Information",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.black, height: 1),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Name", detail: "Ajeet Kumar"),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Mobile Number : ", detail: "8888888888"),
          ],
        ),
      ),
    );
  }
}

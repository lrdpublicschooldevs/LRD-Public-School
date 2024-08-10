import 'package:flutter/material.dart';
import 'package:myapp/Pages/Widgets/Student_Page/Student_profile/Widgets/studentEditBox.dart';

class HelplinePage extends StatelessWidget {
  const HelplinePage({super.key});

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
              "Helpline",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.black, height: 1),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Email : ", detail: "ajeetkumar@gmail.com"),
            const SizedBox(height: 15),
            const StudentEditDetail(text: "Contact Number : ", detail: "8888888888"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/Exam/widgets/UnitBoxLabel.dart';

class UnitTestDetails extends StatelessWidget {
  const UnitTestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(250, 225, 225, 0.6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Unit Text",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.black, height: 1),
              const SizedBox(height: 5),
              const UnitBoxLabel(
                date: "1",
                subject: "Science",
                peroid: "1st  ",
                month: "July",
                day: "Monday",
                duration: "30 min",
              ),
              Container(color: Colors.black, height: 0.3),
              const UnitBoxLabel(
                date: "2",
                subject: "Mathematics",
                peroid: "2nd",
                month: "July",
                day: "Tuesday",
                duration: "30 min",
              ),
              Container(color: Colors.black, height: 0.3),
              const UnitBoxLabel(
                date: "3",
                subject: "Social Science",
                peroid: "3rd ",
                month: "July",
                day: "Wednesday",
                duration: "30 min",
              ),
              Container(color: Colors.black, height: 0.3),
              const UnitBoxLabel(
                date: "4",
                subject: "Hindi",
                peroid: "4th",
                month: "July",
                day: "Thursday",
                duration: "30 min",
              ),
              Container(color: Colors.black, height: 0.3),
              const UnitBoxLabel(
                date: "5",
                subject: "English",
                peroid: "5th",
                month: "Friday",
                day: "Monday",
                duration: "30 min",
              ),
              Container(color: Colors.black, height: 0.3),
              const UnitBoxLabel(
                date: "6",
                subject: "Computer",
                peroid: "6th",
                month: "July",
                day: "Saturday",
                duration: "30 min",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

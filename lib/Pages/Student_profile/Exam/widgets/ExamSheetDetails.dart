import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_profile/Exam/widgets/ExamSheetLabel.dart';

class ExamSheetDetails extends StatelessWidget {
  const ExamSheetDetails({super.key});

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
                "Exam Sheet",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
              Container(color: Colors.black, height: 0.7),
              const SizedBox(height: 5),
              ExamSheetLabel(
                date: '1',
                subject: "Science",
                from: "09:00 AM",
                month: "July",
                day: "Monday",
                to: "10:30 AM",
              ),
              Container(color: Colors.black, height: 0.3),
              ExamSheetLabel(
                date: '2',
                subject: "Mathmetaics",
                from: "09:00 AM",
                month: "July",
                day: "Tuesday",
                to: "10:30 AM",
              ),
              Container(color: Colors.black, height: 0.3),
              ExamSheetLabel(
                date: '3',
                subject: "Social Science",
                from: "09:00 AM",
                month: "July",
                day: "Wednesday",
                to: "10:30 AM",
              ),
              Container(color: Colors.black, height: 0.3),
              ExamSheetLabel(
                date: '4',
                subject: "Hindi",
                from: "09:00 AM",
                month: "July",
                day: "Thursday",
                to: "10:30 AM",
              ),
              Container(color: Colors.black, height: 0.3),
              ExamSheetLabel(
                date: '5',
                subject: "English",
                from: "09:00 AM",
                month: "July",
                day: "Friday",
                to: "10:30 AM",
              ),
              Container(color: Colors.black, height: 0.3),
              ExamSheetLabel(
                date: '6',
                subject: "Computer",
                from: "09:00 AM",
                month: "July",
                day: "Saturday",
                to: "10:30 AM",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

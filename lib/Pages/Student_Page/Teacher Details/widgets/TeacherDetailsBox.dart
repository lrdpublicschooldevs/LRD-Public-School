import 'package:flutter/material.dart';

class TeacherDetailBox extends StatelessWidget {
  final String teacherName;
  final String mobileNo;
  final String emailId;
  final String subjectName;
  final String cabinNo;
  const TeacherDetailBox({
    super.key,
    required this.teacherName,
    required this.mobileNo,
    required this.emailId,
    required this.subjectName,
    required this.cabinNo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        children: [
          Text(
            teacherName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Container(height: 1, width: MediaQuery.of(context).size.width * 0.8, color: Colors.black),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mobile No. : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                mobileNo,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Email Id : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                emailId,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subject : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                subjectName,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cabin No. : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                cabinNo,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatelessWidget {
  // List of student details

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Student Detail's",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 10),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            // ...studentDetails
            //     .map((detail) => Column(
            //           children: [
            //             StudentEditDetail(text: detail["text"]!, detail: detail["detail"]!),
            //             SizedBox(height: 15),
            //           ],
            //         ))
            //     .toList(),
          ],
        ),
      ),
    );
  }
}

class StudentEditDetail extends StatelessWidget {
  final String text;
  final String detail;

  const StudentEditDetail({
    Key? key,
    required this.text,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detail,
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

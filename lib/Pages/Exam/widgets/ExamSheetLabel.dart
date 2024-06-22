import 'package:flutter/material.dart';

class ExamSheetLabel extends StatelessWidget {
  final String date;
  final String subject;
  final String from;
  final String month;
  final String day;
  final String to;
  const ExamSheetLabel({
    super.key,
    required this.date,
    required this.subject,
    required this.from,
    required this.month,
    required this.day,
    required this.to,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 8),
              Text(
                date,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 22),
              Text(
                subject,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              Text(
                "From : ${from}",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                month,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 10),
              Text(
                day,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              Text(
                "To : ${to}",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          )
        ],
      ),
    );
  }
}

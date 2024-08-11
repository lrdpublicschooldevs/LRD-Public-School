import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(width: 22),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  subject,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "From : $from",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
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
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  day,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "To : $to",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

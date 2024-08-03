import 'package:flutter/material.dart';

class SubjectWiseLabel extends StatelessWidget {
  final String date;
  final String present;
  final String subject;
  final String absent;
  final String precentage;
  const SubjectWiseLabel({
    super.key,
    required this.date,
    required this.present,
    required this.subject,
    required this.absent,
    required this.precentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(
                      "Present : $present",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subject,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "Absent : $absent",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 7),
          CircleAvatar(
            radius: 22,
            child: Text(
              precentage,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

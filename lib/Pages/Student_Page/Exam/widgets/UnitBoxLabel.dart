import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UnitBoxLabel extends StatelessWidget {
  final String date;
  final String subject;
  final String peroid;
  final String month;
  final String day;
  final String duration;
  const UnitBoxLabel({
    super.key,
    required this.date,
    required this.subject,
    required this.peroid,
    required this.month,
    required this.day,
    required this.duration,
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
                  "Peroid : $peroid",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(width: 35),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                month,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  day,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "Duration : $duration",
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

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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      date,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Spacer(),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "Present : $present",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      subject,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Spacer(),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "Absent : $absent",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 7),
          CircleAvatar(
            minRadius: 15,
            maxRadius: 20,
            child: Text(
              maxLines: 1,
              precentage,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

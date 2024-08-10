import 'package:flutter/material.dart';
import 'package:myapp/Config/colors.dart';
import 'package:myapp/Pages/Widgets/Teacher_Page/AttendanceMark/edit_attendance.dart';
import 'package:myapp/Pages/Widgets/Teacher_Page/AttendanceMark/mark_attendance.dart';

class TAttendanceCard extends StatelessWidget {
  final String subject;
  final String time;
  final String classInfo;
  final String period;

  const TAttendanceCard({
    required this.subject,
    required this.time,
    required this.classInfo,
    required this.period,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subject,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                time,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(classInfo),
              Text(period),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(color: Colors.black54, height: 1),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MarkAttendancePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textStyle: Theme.of(context).textTheme.labelSmall,
                    foregroundColor: dOnBackgroundColor,
                  ),
                  child: const Text('Mark Attendance'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditAttendancePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade600,
                    textStyle: Theme.of(context).textTheme.labelSmall,
                    foregroundColor: dOnBackgroundColor,
                  ),
                  child: const Text('Edit Attendance'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

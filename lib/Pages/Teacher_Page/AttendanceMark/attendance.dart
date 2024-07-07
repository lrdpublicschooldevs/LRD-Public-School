import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'edit_attendance.dart';
import 'mark_attendance.dart';
import 'package:myapp/Config/colors.dart'; // Make sure to import your colors.dart file if you are using custom colors

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Attendance')),
      ),
      body: Stack(
        children: [
          // Background SVG
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/icons/bgDesignLayer.svg',
              fit: BoxFit.cover
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(8.0),
            children: const[
              AttendanceCard(
                subject: 'Mathematics',
                time: '08:00am - 08:40am',
                classInfo: 'Class: 3A',
                period: 'Period 1',
              ),
              AttendanceCard(
                subject: 'Social Science',
                time: '08:40am - 09:20am',
                classInfo: 'Class: 4B',
                period: 'Period 2',
              ),
              AttendanceCard(
                subject: 'Mathematics',
                time: '09:20am - 10:00am',
                classInfo: 'Class: 5B',
                period: 'Period 3',
              ),
              AttendanceCard(
                subject: 'Mathematics',
                time: '10:00am - 10:40am',
                classInfo: 'Class: 5A',
                period: 'Period 4',
              ),
              AttendanceCard(
                subject: 'Social Science',
                time: '11:20am - 12:00pm',
                classInfo: 'Class: 3B',
                period: 'Period 5',
              ),
              AttendanceCard(
                subject: 'Mathematics',
                time: '12:00pm - 12:40pm',
                classInfo: 'Class: 6A',
                period: 'Period 6',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AttendanceCard extends StatelessWidget {
  final String subject;
  final String time;
  final String classInfo;
  final String period;

  const AttendanceCard({
    required this.subject,
    required this.time,
    required this.classInfo,
    required this.period,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.black54, // Add your preferred border color
          width: 1, // Add your preferred border width
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
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
            const Divider(
              color: Colors.black54,
              height: 1,
              thickness: 1,
            ),
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
                      backgroundColor: Colors.red.shade700,
                      textStyle: Theme.of(context).textTheme.labelMedium,
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
                      textStyle: Theme.of(context).textTheme.labelMedium,
                      foregroundColor: dOnBackgroundColor,
                    ),
                    child: const Text('Edit Attendance'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EditAttendancePage extends StatelessWidget {
  const EditAttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Attendance')),
      body: const Center(
        child: Text('Edit Attendance Page'),
      ),
    );
  }
}

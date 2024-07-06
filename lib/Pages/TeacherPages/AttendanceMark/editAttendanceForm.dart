import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'student_model.dart'; // Import the Student class

class EditAttendanceForm extends StatefulWidget {
  final Student student;
  final void Function(bool present, bool absent) onAttendanceChanged;

  const EditAttendanceForm({
    super.key,
    required this.student,
    required this.onAttendanceChanged,
  });

  @override
  _EditAttendanceFormState createState() => _EditAttendanceFormState();
}

class _EditAttendanceFormState extends State<EditAttendanceForm> {
  late bool _isPresent;
  late bool _isAbsent;
  final TextEditingController _reasonController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _isPresent = widget.student.present;
    _isAbsent = widget.student.absent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Attendance'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/icons/bgDesignLayer.svg', // Replace with your SVG asset path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Card(
                color: Colors.white.withOpacity(0.9), // Make the card slightly transparent
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Match the container's border radius
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Date and Time
                      const SizedBox(height: 16),
                      Text(
                        '12 Apr 2024',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        '8:30 a.m. to 9:15 a.m.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      // Student Info
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/profile_pic.png'),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            widget.student.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      // Present and Absent Options
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildAttendanceOption(
                            'Present',
                            _isPresent,
                            Colors.green.shade900,
                                () {
                              setState(() {
                                _isPresent = true;
                                _isAbsent = false;
                              });
                            },
                          ),
                          _buildAttendanceOption(
                            'Absent',
                            _isAbsent,
                            Colors.red.shade900,
                                () {
                              setState(() {
                                _isPresent = false;
                                _isAbsent = true;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Reason',
                        ),
                      ),
                      // Reason Field
                      const SizedBox(height: 16),
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 100, // Minimum height
                          maxHeight: 200, // Maximum height
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextField(
                          controller: _reasonController,
                          maxLines: null, // This makes the TextField expandable
                          decoration: const InputDecoration(
                            hintText: 'Enter reason for absence or presence',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                          keyboardType: TextInputType.multiline,
                          expands: true, // This makes the TextField responsive
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Submit Button
                      ElevatedButton(
                        onPressed: () {
                          if (_reasonController.text.isEmpty) {
                            setState(() {});
                          } else {
                            widget.onAttendanceChanged(_isPresent, _isAbsent);
                            Navigator.of(context).pop();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                        ),
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceOption(String label, bool value, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: value ? color : Colors.transparent,
              border: Border.all(color: color, width: 2),
            ),
            child: value ? const Icon(Icons.check, size: 18, color: Colors.white) : null,
          ),
          const SizedBox(width: 8),
          Text(label, style: TextStyle(color: color, fontSize: 16)),
        ],
      ),
    );
  }
}

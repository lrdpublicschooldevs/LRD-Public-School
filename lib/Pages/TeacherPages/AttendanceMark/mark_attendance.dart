import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MarkAttendancePage extends StatefulWidget {
  const MarkAttendancePage({super.key});

  @override
  MarkAttendancePageState createState() => MarkAttendancePageState();
}

class MarkAttendancePageState extends State<MarkAttendancePage> {
  List<Student> students = [
    Student(name: 'Akshay Kumar', present: false, absent: false),
    Student(name: 'Rajendra Singh Arora', present: false, absent: false),
    Student(name: 'Vijay Joshi', present: false, absent: false),
    Student(name: 'Anisha singh', present: false, absent: false),
    Student(name: 'Diksha Rautela', present: false, absent: false),
    Student(name: 'Manish negi', present: false, absent: false),
    Student(name: 'Ansh Raj', present: false, absent: false),
    Student(name: 'Gracy Singh', present: false, absent: false),
    // Add more students here
  ];

  List<Student> filteredStudents = [];

  bool allPresent = false;

  @override
  void initState() {
    super.initState();
    filteredStudents = students; // Initialize filteredStudents with all students
  }

  void markAllPresent(bool value) {
    setState(() {
      allPresent = value;
      for (var student in filteredStudents) {
        student.present = value;
        student.absent = !value;
      }
    });
  }

  void filterStudents(String query) {
    List<Student> results = [];
    if (query.isEmpty) {
      results = students;
    } else {
      results = students
          .where((student) =>
          student.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      filteredStudents = results;
    });
  }

  void showPopupMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: const CustomPopupWidget(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('dd MMM yyyy').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
      ),
      body: Stack(
        children: [
          // Background SVG
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/icons/bgDesignLayer.svg', // Replace with your SVG file path
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Header Card
                Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.black54, // Add your preferred border color
                      width: 1, // Add your preferred border width
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '5th B Hindi',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(currentDate),
                            Text('8:30 a.m. to 9:15 a.m.'),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${students.length} Students'),
                            Row(
                              children: [
                                const Text('Mark All Present'),
                                Checkbox(
                                  value: allPresent,
                                  onChanged: (value) {
                                    if (value != null) {
                                      markAllPresent(value);
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search Student ...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.grey[100],
                            filled: true,
                          ),
                          style: const TextStyle(
                            fontSize: 14, // Change this to the desired font size
                          ),
                          onChanged: (value) {
                            filterStudents(value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Student List
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredStudents.length,
                    itemBuilder: (context, index) {
                      return StudentCard(
                        student: filteredStudents[index],
                        onPresentChanged: (value) {
                          setState(() {
                            filteredStudents[index].present = value;
                            filteredStudents[index].absent = !value;
                          });
                        },
                        onAbsentChanged: (value) {
                          setState(() {
                            filteredStudents[index].absent = value;
                            filteredStudents[index].present = !value;
                          });
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 12),
                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    // Implement submit functionality
                    showPopupMessage(context); // Show the popup message on submit
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  ),
                  child: const Text(
                    'Submit Attendance',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  final Student student;
  final ValueChanged<bool> onPresentChanged;
  final ValueChanged<bool> onAbsentChanged;

  const StudentCard({
    required this.student,
    required this.onPresentChanged,
    required this.onAbsentChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile_pic.png'), // Replace with actual profile image
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                student.name,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Checkbox(
              value: student.present,
              onChanged: (value) {
                if (value != null) {
                  onPresentChanged(value);
                }
              },
              activeColor: Colors.green,
            ),
            Checkbox(
              value: student.absent,
              onChanged: (value) {
                if (value != null) {
                  onAbsentChanged(value);
                }
              },
              activeColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class Student {
  String name;
  bool present;
  bool absent;

  Student({required this.name, required this.present, required this.absent});
}

class CustomPopupWidget extends StatelessWidget {
  const CustomPopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Adjust the width as needed
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '5th B',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Hindi',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '12 Apr 2024\n8:30 a.m. to 9:15 a.m.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Attendance has been submitted successfully!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            child: const Text(
              'View Attendance',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

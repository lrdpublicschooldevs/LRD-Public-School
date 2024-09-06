import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Widgets/primaryBtn.dart'; // Import the intl package

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
      results = students.where((student) => student.name.toLowerCase().contains(query.toLowerCase())).toList();
    }

    setState(() {
      filteredStudents = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('dd MMM yyyy').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Attendance Marking",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsImage.bgDesignSVG,
<<<<<<< HEAD
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
=======
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
>>>>>>> ansh
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(250, 225, 225, 0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(currentDate),
                          const Text('8:30 a.m. to 9:15 a.m.'),
                        ],
                      ),
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
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search Student ...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.white,
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
                const SizedBox(height: 5),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryBtn(btnName: "Submit Attendance", ontap: () {})
                  ],
                )
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  AssetsImage.proflePicImg,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 10),
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
              activeColor: Theme.of(context).colorScheme.primary,
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

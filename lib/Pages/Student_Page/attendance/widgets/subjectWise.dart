import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/attendance/widgets/subjewiseLabel.dart';

class SubjectWiseBox extends StatefulWidget {
  const SubjectWiseBox({super.key});

  @override
  State<SubjectWiseBox> createState() => _SubjectWiseBoxState();
}

class _SubjectWiseBoxState extends State<SubjectWiseBox> {
  @override
  Widget build(BuildContext context) {
    String? _selectMonths;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20, left: 20, top: 10),
          padding: const EdgeInsets.all(20),
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(250, 225, 225, 0.6),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            value: _selectMonths,
            dropdownColor: Theme.of(context).colorScheme.onPrimary,
            hint: const Text("Choose Month"),
            onChanged: (String? newValue) {
              setState(() {
                _selectMonths = newValue!;
              });
            },
            items: <String>[
              'January',
              'February',
              'March',
              'April',
              'May',
              'June',
              'July',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            underline: Container(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20, left: 20, top: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(250, 225, 225, 0.6),
          ),
          child: Column(
            children: [
              Text(
                "April",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.black, height: 1),
              const SubjectWiseLabel(
                date: "09/06/24 - 09/06/24",
                present: "15",
                subject: "Science",
                absent: "5",
                precentage: "63.3%",
              ),
              const Divider(color: Colors.black38, height: 1),
              const SubjectWiseLabel(
                date: "09/06/24 - 09/06/24",
                present: "15",
                subject: "Mathematics",
                absent: "5",
                precentage: "63.3%",
              ),
              const Divider(color: Colors.black38, height: 1),
              const SubjectWiseLabel(
                date: "09/06/24 - 09/06/24",
                present: "15",
                subject: "Computer Science",
                absent: "5",
                precentage: "63.3%",
              ),
              const Divider(color: Colors.black38, height: 1),
              const SubjectWiseLabel(
                date: "09/06/24 - 09/06/24",
                present: "15",
                subject: "Hindi",
                absent: "5",
                precentage: "63.3%",
              ),
              const Divider(color: Colors.black38, height: 1),
              const SubjectWiseLabel(
                date: "09/06/24 - 09/06/24",
                present: "15",
                subject: "English",
                absent: "5",
                precentage: "63.3%",
              ),
              const Divider(color: Colors.black38, height: 1),
              const SubjectWiseLabel(
                date: "09/06/24 - 09/06/24",
                present: "15",
                subject: "Social Science",
                absent: "5",
                precentage: "63.3",
              ),
              const Divider(color: Colors.black38, height: 1),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Overall April Attendance : ",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: Text(
                      "45%",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class SyllabusBox extends StatefulWidget {
  const SyllabusBox({super.key});

  @override
  State<SyllabusBox> createState() => _SyllabusBoxState();
}

class _SyllabusBoxState extends State<SyllabusBox> {
  @override
  Widget build(BuildContext context) {
    String? _selectedClass;
    String? _selectedSubject;
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        children: [
          Text(
            "Select Class",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          DropdownButton<String>(
            isExpanded: true,
            value: _selectedClass,
            dropdownColor: const Color.fromRGBO(250, 225, 225, 0.8),
            hint: const Text("Choose Class"),
            onChanged: (String? newValue) {
              setState(() {
                _selectedClass = newValue!;
              });
            },
            items: <String>[
              '1',
              '2',
              '3',
              '4'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            underline: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Select Subjects",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          DropdownButton<String>(
            isExpanded: true,
            value: _selectedSubject,
            dropdownColor: const Color.fromRGBO(250, 225, 225, 0.8),
            hint: const Text("Choose Subject"),
            onChanged: (String? newValue) {
              setState(() {
                _selectedSubject = newValue!;
              });
            },
            items: <String>[
              'Science',
              'Mathmetaics',
              'Computer',
              'Hindi'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            underline: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 15),
          PrimaryBtn(btnName: "Preview", ontap: () {})
        ],
      ),
    );
  }
}

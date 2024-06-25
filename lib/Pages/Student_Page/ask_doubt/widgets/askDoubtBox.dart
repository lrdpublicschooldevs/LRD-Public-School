import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class AskDoubtBox extends StatefulWidget {
  const AskDoubtBox({super.key});

  @override
  State<AskDoubtBox> createState() => _AskDoubtBoxState();
}

class _AskDoubtBoxState extends State<AskDoubtBox> {
  String? _selectedTeacher;
  String? _selectedSubject;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Teacher",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          DropdownButton<String>(
            isExpanded: true,
            value: _selectedTeacher,
            dropdownColor: const Color.fromRGBO(250, 225, 225, 0.8),
            hint: const Text("Choose Teacher"),
            onChanged: (String? newValue) {
              setState(() {
                _selectedTeacher = newValue!;
              });
            },
            items: <String>[
              'Teacher 1',
              'Teacher 2',
              'Teacher 3',
              'Teacher 4'
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
            "Select Subject",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          DropdownButton<String>(
            isExpanded: true,
            value: _selectedSubject,
            dropdownColor: const Color.fromRGBO(250, 225, 225, 0.8),
            hint: const Text("Choose Teacher"),
            onChanged: (String? newValue) {
              setState(() {
                _selectedSubject = newValue!;
              });
            },
            items: <String>[
              'Subject 1',
              'Subject 2',
              'Subject 3',
              'Subject 4'
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
          Text("Title", style: Theme.of(context).textTheme.bodyLarge),
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter subject title",
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text("Doubt Description", style: Theme.of(context).textTheme.bodyLarge),
          TextField(
            maxLines: 3,
            decoration: const InputDecoration(
              hintText: "Enter detailed description",
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            keyboardType: TextInputType.multiline,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1000)
            ],
          ),
          const SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            PrimaryBtn(
              btnName: "Submit Request",
              ontap: () {},
            ),
          ]),
        ],
      ),
    );
  }
}

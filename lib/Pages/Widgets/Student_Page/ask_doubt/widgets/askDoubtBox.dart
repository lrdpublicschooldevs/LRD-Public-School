import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/customDropDown.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class AskDoubtBox extends StatefulWidget {
  const AskDoubtBox({super.key});

  @override
  State<AskDoubtBox> createState() => _AskDoubtBoxState();
}

class _AskDoubtBoxState extends State<AskDoubtBox> {
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
          const CustomDropdown(items: [
            {
              'value': 'teacher1',
              'label': 'Teacher 1'
            },
            {
              'value': 'teacher2',
              'label': 'Teacher 2'
            },
            {
              'value': 'teacher3',
              'label': 'Teacher 3'
            },
            {
              'value': 'teacher4',
              'label': 'Teacher 4'
            },
          ], hint: "Choose Teacher"),
          const SizedBox(height: 15),
          Text(
            "Select Subject",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const CustomDropdown(items: [
            {
              'value': 'subject 1',
              'label': 'Subject 1'
            },
            {
              'value': 'subject 2',
              'label': 'Subject 2'
            },
            {
              'value': 'subject 3',
              'label': 'Subject 3'
            },
            {
              'value': 'subject 4',
              'label': 'Subject 4'
            },
          ], hint: "Choose Subject"),
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

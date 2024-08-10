import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/customDropDown.dart';
import 'package:myapp/Widgets/dateTimePick.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class LeaveSheetBox extends StatelessWidget {
  LeaveSheetBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _descriptionController = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Class Teacher",
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
          const SizedBox(height: 20),
          Text(
            "Select Date",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const DateTimePick(),
          const SizedBox(height: 20),
          Text("Application Title", style: Theme.of(context).textTheme.bodyLarge),
          TextField(
            controller: _titleController,
            maxLines: 2,
            decoration: const InputDecoration(
              hintText: "Enter title (e.g., Fever, Emergency, Marriage)",
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text("Description", style: Theme.of(context).textTheme.bodyLarge),
          TextField(
            controller: _descriptionController,
            maxLines: 3,
            decoration: const InputDecoration(
              hintText: "Enter detailed description",
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            keyboardType: TextInputType.multiline,
            inputFormatters: [
              LengthLimitingTextInputFormatter(500)
            ],
          ),
          const SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            PrimaryBtn(
              btnName: "Submit Request",
              ontap: () {},
            ),
          ]),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class LeaveSheetBox extends StatefulWidget {
  const LeaveSheetBox({super.key});

  @override
  State<LeaveSheetBox> createState() => _LeaveSheetBoxState();
}

class _LeaveSheetBoxState extends State<LeaveSheetBox> {
  String? _selectedTeacher;
  DateTime? _selectedDate;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
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
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedTeacher,
              dropdownColor: Theme.of(context).colorScheme.onPrimary,
              hint: Text("Choose Teacher"),
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
            const SizedBox(height: 20),
            Text(
              "Select Date",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            InkWell(
              onTap: () => _pickDate(context),
              child: InputDecorator(
                decoration: InputDecoration(
                  hintText: _selectedDate == null ? 'Choose Date' : "${_selectedDate!.toLocal()}".split(' ')[0],
                  hintStyle: TextStyle(color: Colors.black),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  suffixIcon: Icon(Icons.calendar_today, color: Colors.black),
                ),
                child: Text(
                  _selectedDate == null ? '-- Select Date --' : "${_selectedDate!.toLocal()}".split(' ')[0],
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Application Title",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            TextField(
              controller: _titleController,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: "Enter title (e.g., Fever, Emergency, Marriage)",
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            TextField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: InputDecoration(
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
                ontap: () {},wd: null,
              ),
            ]),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

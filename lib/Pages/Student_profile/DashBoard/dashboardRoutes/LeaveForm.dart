import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaveForm extends StatefulWidget {
  @override
  _LeaveFormState createState() => _LeaveFormState();
}

class _LeaveFormState extends State<LeaveForm> {
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
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/icons/bgDesignLayer.svg', // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                AppBar(
                  title:  Center(child: Text('Leave Form')),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 20,
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Class Teacher",
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                            DropdownButton<String>(
                              isExpanded: true,
                              value: _selectedTeacher,
                              hint: Text("Choose Teacher"),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedTeacher = newValue!;
                                });
                              },
                              items: <String>['Teacher 1', 'Teacher 2', 'Teacher 3', 'Teacher 4']
                                  .map<DropdownMenuItem<String>>((String value) {
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
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                            InkWell(
                              onTap: () => _pickDate(context),
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  hintText: _selectedDate == null
                                      ? 'Choose Date'
                                      : "${_selectedDate!.toLocal()}".split(' ')[0],
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  suffixIcon: Icon(Icons.calendar_today, color: Colors.grey),
                                ),
                                child: Text(
                                  _selectedDate == null
                                      ? ''
                                      : "${_selectedDate!.toLocal()}".split(' ')[0],
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
                              maxLines: null,
                              decoration: InputDecoration(
                                hintText: "Enter detailed description",
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                              keyboardType: TextInputType.multiline,
                              inputFormatters: [LengthLimitingTextInputFormatter(500)],
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle submit logic here
                                },
                                child: Text('Submit Request',style: TextStyle(color: Colors.white),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context).colorScheme.primary,
                                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                  textStyle: TextStyle(fontSize: 18),
                                ),
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
          ],
        ),
      ),
    );
  }
}

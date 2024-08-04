import 'package:flutter/material.dart';

class DateTimePick extends StatefulWidget {
  const DateTimePick({super.key});

  @override
  State<DateTimePick> createState() => _DateTimePickState();
}

class _DateTimePickState extends State<DateTimePick> {
  DateTime? _selectedDate;
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
    return InkWell(
      onTap: () => _pickDate(context),
      child: InputDecorator(
        decoration: InputDecoration(
          hintText: _selectedDate == null ? 'Choose Date' : "${_selectedDate!.toLocal()}".split(' ')[0],
          hintStyle: const TextStyle(color: Colors.black),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: const Icon(Icons.calendar_today, color: Colors.black),
        ),
        child: Text(
          _selectedDate == null ? '-- Select Date --' : "${_selectedDate!.toLocal()}".split(' ')[0],
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

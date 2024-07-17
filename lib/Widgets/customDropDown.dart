import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<Map<String, String>> items;
  final String hint;
  final Color dropdownColor;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.hint,
    this.dropdownColor = const Color.fromRGBO(250, 225, 225, 0.8),
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: _selectedItem,
      dropdownColor: widget.dropdownColor,
      
      hint: Text(widget.hint),
      onChanged: (String? newValue) {
        setState(() {
          _selectedItem = newValue!;
        });
      },
      items: widget.items.map<DropdownMenuItem<String>>((Map<String, String> item) {
        return DropdownMenuItem<String>(
          value: item['value'],
          child: Text(item['label']!),
        );
      }
      ).toList(),
      underline: Container(
        height: 1,
        color: Colors.grey,
      ),
    );
  }
}

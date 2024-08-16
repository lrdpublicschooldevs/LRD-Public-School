import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class OverAll extends StatefulWidget {
  const OverAll({super.key});
  @override
  _OverAllState createState() => _OverAllState();
}

class _OverAllState extends State<OverAll> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, String> _events = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, right: 15, left: 15),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(250, 225, 225, 0.6),
          ),
          child: TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                _showActivityDialog(selectedDay);
              });
            },
            eventLoader: (day) {
              return _events[day] != null
                  ? [
                      _events[day]!
                    ]
                  : [];
            },
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                if (events.isNotEmpty) {
                  return _buildMarker(date, events.first!);
                }
                return null;
              },
            ),
          ),
        ),
        const SizedBox(height: 15),
        _buildLegend(),
      ],
    );
  }

  Widget _buildMarker(DateTime date, Object event) {
    Color color;
    switch (event) {
      case 'Present':
        color = Colors.green;
        break;
      case 'Absent':
        color = Colors.red;
        break;
      case 'Holiday':
        color = Colors.blue;
        break;
      default:
        color = Colors.grey;
    }
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      top: 0,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: color, // color of the border
            width: 5.0, // width of the border
          ),
        ),
        width: 40.0,
        height: 40.0,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent, // inner color
          ),
        ),
      ),
    );
  }

  Widget _buildLegend() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(right: 20, left: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10),
            _buildLegendItem(Colors.green, 'Present', "34"),
            const SizedBox(height: 10),
            _buildLegendItem(Colors.red, 'Absent', "3"),
            const SizedBox(height: 10),
            _buildLegendItem(Colors.blue, 'Holiday', "4"),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(Color color, String text, String total) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: color),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: color),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Spacer(),
          Container(
            width: 33.0,
            height: 33.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                total,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }

  void _showActivityDialog(DateTime date) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Activity'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.check, color: Colors.green),
                title: const Text('Present'),
                onTap: () {
                  _setActivity(date, 'Present');
                },
              ),
              ListTile(
                leading: const Icon(Icons.close, color: Colors.red),
                title: const Text('Absent'),
                onTap: () {
                  _setActivity(date, 'Absent');
                },
              ),
              ListTile(
                leading: const Icon(Icons.beach_access, color: Colors.blue),
                title: const Text('Holiday'),
                onTap: () {
                  _setActivity(date, 'Holiday');
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _setActivity(DateTime date, String activity) {
    setState(() {
      _events[date] = activity;
    });
    Navigator.of(context).pop();
  }
}

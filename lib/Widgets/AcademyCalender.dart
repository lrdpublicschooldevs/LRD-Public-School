import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:convert';

// Sample JSON data with attendance information
String attendanceJson = '''
{
  "2024-04-05": "present",
  "2024-04-06": "present",
  "2024-04-07": "present",
  "2024-04-08": "present",
  "2024-04-09": "present",
  "2024-04-10": "present",
  "2024-04-11": "present",
  "2024-04-12": "absent",
  "2024-04-13": "absent",
  "2024-04-14": "absent",
  "2024-04-25": "holiday",
  "2024-04-04": "holiday",
  "2024-04-18": "holiday",
  "2024-04-01": "holiday"
}
''';

// Enum to represent attendance status
enum AttendanceStatus {
  present,
  absent,
  holiday,
  unknown
}

// Function to parse JSON data into a Map<DateTime, AttendanceStatus>
Map<DateTime, AttendanceStatus> parseAttendanceData(String jsonData) {
  final Map<String, dynamic> decodedData = json.decode(jsonData);
  final Map<DateTime, AttendanceStatus> attendanceData = {};

  decodedData.forEach((key, value) {
    final date = DateTime.parse(key);
    switch (value) {
      case 'present':
        attendanceData[date] = AttendanceStatus.present;
        break;
      case 'absent':
        attendanceData[date] = AttendanceStatus.absent;
        break;
      case 'holiday':
        attendanceData[date] = AttendanceStatus.holiday;
        break;
      default:
        attendanceData[date] = AttendanceStatus.unknown;
        break;
    }
  });

  return attendanceData;
}

class AttendanceCalendar extends StatefulWidget {
  final Map<DateTime, AttendanceStatus> attendanceData;

  AttendanceCalendar({required this.attendanceData});

  @override
  _AttendanceCalendarState createState() => _AttendanceCalendarState();
}

class _AttendanceCalendarState extends State<AttendanceCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Attendance')),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2022, 1, 1), // Adjust as needed
            lastDay: DateTime.utc(2030, 12, 31), // Adjust as needed
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() => _calendarFormat = format);
            },
            onPageChanged: (focusedDay) => _focusedDay = focusedDay,
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[300],
                border: Border.all(color: Colors.blue, width: 2.0),
              ),
              todayDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, day, focusedDay) {
                final attendanceStatus = widget.attendanceData[day];
                final color = attendanceStatus != null
                    ? attendanceStatus == AttendanceStatus.present
                        ? Colors.green
                        : attendanceStatus == AttendanceStatus.absent
                            ? Colors.red
                            : attendanceStatus == AttendanceStatus.holiday
                                ? Colors.blue
                                : Colors.pink // Color for unknown status
                    : Colors.pink; // Default color for days with no data
                return _buildAttendanceMarker(day, color);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildLegend('Absent', Colors.red, '03'),
                _buildLegend('Present', Colors.green, '09'),
                _buildLegend('Events & Holidays', Colors.blue, '04'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceMarker(DateTime day, Color color) {
    return Center(
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '${day.day}',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildLegend(String label, Color color, String count) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Text(label),
        Spacer(),
        Text(count),
      ],
    );
  }
}

void main() {
  // Parse the attendance data from JSON
  final attendanceData = parseAttendanceData(attendanceJson);

  // Run the app with the parsed attendance data
  runApp(MaterialApp(home: AttendanceCalendar(attendanceData: attendanceData)));
}

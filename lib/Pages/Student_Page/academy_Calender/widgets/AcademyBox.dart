import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/academy_Calender/widgets/AcademyLabel.dart';

class AcademyBox extends StatelessWidget {
  const AcademyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AcademyLabel(
          labelColor: Colors.yellow.shade300,
          labelName: "January",
          labelBox: Column(
            children: [
              labelbox(context, "Makar Sankranti", "15 Jan 2024, Monady"),
              const SizedBox(height: 5),
              labelbox(context, "Republic Day", "26 Jan 2024, Friday"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        AcademyLabel(
          labelColor: Colors.green.shade300,
          labelName: "February",
          labelBox: Column(
            children: [
              labelbox(context, "Vasant Panchami", "14 Feb 24, Wednesday"),
              const SizedBox(height: 5),
              labelbox(context, "Guru Ravidas Jayanti", "24 Feb 24, Saturday"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        AcademyLabel(
          labelColor: Colors.pink.shade300,
          labelName: "March",
          labelBox: Column(
            children: [
              labelbox(context, "Maha Shivaratri", "08 Mar 24, Friday"),
              const SizedBox(height: 5),
              labelbox(context, "Holi", "25 Mar 24, Monday"),
              const SizedBox(height: 5),
              labelbox(context, "Good Friday", "29 Mar 24, Friday"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        AcademyLabel(
          labelColor: Colors.yellow.shade300,
          labelName: "April",
          labelBox: Column(
            children: [
              labelbox(context, "Navratri", "09 Apr 24, Tuesday"),
              const SizedBox(height: 5),
              labelbox(context, "Eid-ul-Fitr", "11 Apr 24, Thursday"),
              const SizedBox(height: 5),
              labelbox(context, "Ambedkar   Jayanti", "14 Apr 24, Sunday"),
              const SizedBox(height: 5),
              labelbox(context, "Ram Navami", "17 Apr 24, Wednesday"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        AcademyLabel(
          labelColor: Colors.green.shade300,
          labelName: "May",
          labelBox: Column(
            children: [
              labelbox(context, "Buddha Purnima", "23 May 24, Thursday"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        AcademyLabel(
          labelColor: Colors.orange.shade300,
          labelName: "June",
          labelBox: Column(
            children: [
              labelbox(context, "Bakrid", "15 Jan 2024, Monady"),
            ],
          ),
        ),
      ],
    );
  }
}

Widget labelbox(BuildContext context, String hoildayName, String date) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          hoildayName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      Expanded(
        child: Text(
          date,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    ],
  );
}

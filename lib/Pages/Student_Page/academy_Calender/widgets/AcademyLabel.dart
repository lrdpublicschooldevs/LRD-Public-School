import 'package:flutter/material.dart';

class AcademyLabel extends StatelessWidget {
  final Color labelColor;
  final String labelName;
  final Widget labelBox;
  const AcademyLabel({super.key, required this.labelColor, required this.labelName, required this.labelBox});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Card(
                color: labelColor,
                elevation: 2,
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.check_circle_outline,
                      color: Colors.black,
                      size: 20,
                    ),
                    const SizedBox(width: 7),
                    Text(
                      labelName,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          labelBox
        ],
      ),
    );
  }
}

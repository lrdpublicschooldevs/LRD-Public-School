import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentEditDetail extends StatelessWidget {
  final String text;
  final String detail;
  const StudentEditDetail({super.key, required this.text, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // width: MediaQuery.of(context).size.width * 0.43,
          child: Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        Expanded(
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.4,
            child: Expanded(
              child: Text(
                detail,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

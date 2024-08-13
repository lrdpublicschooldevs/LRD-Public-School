import 'package:flutter/material.dart';
import 'package:myapp/Widgets/responsiveLayout.dart';

class StudentEditDetail extends StatelessWidget {
  final String text;
  final String detail;
  const StudentEditDetail({super.key, required this.text, required this.detail});

  @override
  Widget build(BuildContext context) {
    final w = Responsive.width(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: w * 0.44,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              detail,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}

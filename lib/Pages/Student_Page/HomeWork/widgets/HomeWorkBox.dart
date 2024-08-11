import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeWorkBox extends StatelessWidget {
  final Color labelColor;
  final String labelName;
  final String subjectName;
  final String assignDate;
  final String submitDate;
  final Widget primBtn;
  const HomeWorkBox({
    super.key,
    required this.labelColor,
    required this.labelName,
    required this.subjectName,
    required this.assignDate,
    required this.submitDate,
    required this.primBtn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(250, 225, 225, 0.6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Card(
                  color: labelColor,
                  elevation: 3,
                  child: Row(
                    children: [
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.check_circle_outline,
                        color: Colors.black,
                        size: 17,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        labelName,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              subjectName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Assign Date : ", style: Theme.of(context).textTheme.labelLarge),
                Text(assignDate, style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    "Last Submission Date : ",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  submitDate,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.black, height: 1),
            const SizedBox(height: 10),
            primBtn
          ],
        ),
      ),
    );
  }
}

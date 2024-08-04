import 'package:flutter/material.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSmallScreen = constraints.maxWidth < 370;

        // Get the current text theme
        TextTheme textTheme = Theme.of(context).textTheme;

        // Helper method to adjust font size
        TextStyle? adjustTextStyle(TextStyle? style) {
          if (style == null) return null;
          return style.copyWith(fontSize: isSmallScreen ? style.fontSize! * 0.8 : style.fontSize);
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      elevation: 2,
                      child: Row(
                        children: [
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.check_circle_outline,
                            color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            labelName,
                            style: adjustTextStyle(textTheme.bodyLarge),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  subjectName,
                  style: adjustTextStyle(textTheme.bodyLarge),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Assign Date:", style: adjustTextStyle(textTheme.bodyMedium)),
                    Text(assignDate, style: adjustTextStyle(textTheme.bodyMedium)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Last Submission Date:", style: adjustTextStyle(textTheme.bodyMedium)),
                    Text(submitDate, style: adjustTextStyle(textTheme.bodyMedium)),
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
      },
    );
  }
}

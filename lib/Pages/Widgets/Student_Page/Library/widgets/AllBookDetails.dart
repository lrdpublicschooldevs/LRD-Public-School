import 'package:flutter/material.dart';

class AllBookDetail extends StatelessWidget {
  final String bookName;
  final VoidCallback onTap;
  final String dateOfIssue;
  final String dateOfReturn;

  const AllBookDetail({
    super.key,
    required this.bookName,
    required this.onTap,
    required this.dateOfIssue,
    required this.dateOfReturn,
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

        return Container(
          margin: const EdgeInsets.only(right: 20, left: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(250, 225, 225, 0.6),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bookName,
                    style: adjustTextStyle(textTheme.bodyLarge),
                  ),
                  InkWell(
                    onTap: onTap,
                    child: Text(
                      "More Detail's",
                      style: adjustTextStyle(textTheme.titleMedium),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.black, height: 1),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date of Issue : ",
                    style: adjustTextStyle(textTheme.titleLarge),
                  ),
                  Text(
                    dateOfIssue,
                    style: adjustTextStyle(textTheme.bodySmall)?.copyWith(color: Colors.grey.shade800),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date of Return : ",
                    style: adjustTextStyle(textTheme.titleLarge),
                  ),
                  Text(
                    dateOfReturn,
                    style: adjustTextStyle(textTheme.bodySmall)?.copyWith(color: Colors.grey.shade800),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

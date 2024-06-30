import 'package:flutter/material.dart';

class AllBookDetail extends StatelessWidget {
  final String bookName;
  final VoidCallback onTap;
  final String dateOfIsuue;
  final String dateOfReturn;
  const AllBookDetail({
    super.key,
    required this.bookName,
    required this.onTap,
    required this.dateOfIsuue,
    required this.dateOfReturn,
  });

  @override
  Widget build(BuildContext context) {
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
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              InkWell(
                onTap: onTap,
                child: Text(
                  "More Detail's",
                  style: Theme.of(context).textTheme.labelLarge,
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
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                dateOfIsuue,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date of Return : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                dateOfReturn,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

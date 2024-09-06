import 'package:flutter/material.dart';

class FeeBody extends StatelessWidget {
  final String date;
  final String month;
  final String installment;
  final String dueAmount;
  final String paidAmount;
  final String balanceAmount;
  const FeeBody({
    super.key,
    required this.date,
    required this.month,
    required this.installment,
    required this.dueAmount,
    required this.paidAmount,
    required this.balanceAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  month,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  installment,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  paidAmount,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              box(context, "Due", dueAmount),
              const Icon(Icons.remove, color: Colors.black, size: 20),
              box(context, "Paid", paidAmount),
              const Icon(Icons.arrow_forward_ios_sharp, color: Colors.black, size: 20),
              box(context, "Balance", balanceAmount),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget box(BuildContext context, String title, String subtitle) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            border: Border.all(color: Colors.black, width: 0.5),
          ),
          child: Center(child: Text(title, style: Theme.of(context).textTheme.bodyMedium)),
        ),
        Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            border: Border.all(color: Colors.black, width: 0.5),
            color: Colors.white,
          ),
          child: Center(child: Text(subtitle, style: Theme.of(context).textTheme.bodyMedium)),
        ),
      ],
    );
  }
}

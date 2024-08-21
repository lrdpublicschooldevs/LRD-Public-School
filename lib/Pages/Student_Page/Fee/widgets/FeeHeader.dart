import 'package:flutter/material.dart';

class FeeHeader extends StatelessWidget {
  final String dueAmount;
  final String paidAmount;
  final String balanceAmount;
  const FeeHeader({
    super.key,
    required this.dueAmount,
    required this.paidAmount,
    required this.balanceAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          box(context, "Due", dueAmount),
          const Icon(Icons.remove, color: Colors.black, size: 20),
          box(context, "Paid", paidAmount),
          const Icon(Icons.arrow_forward_ios_sharp, color: Colors.black, size: 20),
          box(context, "Balance", balanceAmount),
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

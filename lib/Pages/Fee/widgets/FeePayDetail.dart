import 'package:flutter/material.dart';

class FeePayDetail extends StatelessWidget {
  final String receiptNo;
  final String month;
  final String paymentDate;
  final String pendingAmount;
  final Widget primaryBtn;
  const FeePayDetail({
    super.key,
    required this.receiptNo,
    required this.month,
    required this.paymentDate,
    required this.pendingAmount,
    required this.primaryBtn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                "Receipt No. : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                receiptNo,
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(height: 1, width: MediaQuery.of(context).size.width * 0.8, color: Colors.black38),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Month : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                month,
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Last Payment Date : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                paymentDate,
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: MediaQuery.of(context).size.width * 0.8, color: Colors.black38),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Pending Amount : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                pendingAmount,
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          const SizedBox(height: 15),
          primaryBtn
        ],
      ),
    );
  }
}

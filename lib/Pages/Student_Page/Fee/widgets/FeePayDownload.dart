import 'package:flutter/material.dart';

class FeePayDownload extends StatelessWidget {
  final String receiptNo;
  final String month;
  final String paymentDate;
  final String paymentAmount;
  final String paymentMode;
  final Widget primaryBtn;
  const FeePayDownload({
    super.key,
    required this.receiptNo,
    required this.month,
    required this.paymentDate,
    required this.paymentAmount,
    required this.paymentMode,
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
                "Pay Mode : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                paymentMode,
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Date : ",
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
                "Total Amount : ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                paymentAmount,
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

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      padding: const EdgeInsets.all(15),
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
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                receiptNo,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.black38, height: 1),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Month : ",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                month,
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pay Mode : ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                paymentMode,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "Payment Date : ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Text(
                paymentDate,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.black, height: 1),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Amount : ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                paymentAmount,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          const SizedBox(height: 10),
          primaryBtn
        ],
      ),
    );
  }
}

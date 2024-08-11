import 'package:flutter/material.dart';

class UserEditDetail extends StatelessWidget {
  final String text;
  final String detail;
  const UserEditDetail({super.key, required this.text, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          detail,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}

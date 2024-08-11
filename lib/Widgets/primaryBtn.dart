import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback ontap;
  const PrimaryBtn({super.key, required this.btnName, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

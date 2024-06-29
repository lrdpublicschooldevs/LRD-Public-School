import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback ontap;
  final double? wd;
  const PrimaryBtn({super.key, required this.btnName, required this.ontap, required this.wd});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ontap,
      child: Container(width: wd,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

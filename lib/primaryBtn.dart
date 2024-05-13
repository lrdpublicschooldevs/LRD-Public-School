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
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFA62E2E),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class OverAllBox extends StatelessWidget {
  const OverAllBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
    );
  }
}

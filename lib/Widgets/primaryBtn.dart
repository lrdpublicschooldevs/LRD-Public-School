import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback ontap;

  const PrimaryBtn({super.key, required this.btnName, required this.ontap});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Define button width as a percentage of screen width or a fixed width if screen is wide
    double buttonWidth = screenWidth > 420 ? 300 : screenWidth * 0.7; // Fixed width of 300 for wide screens

    // Define text size as a percentage of screen width or a fixed size if screen is wide
    double fontSize = screenWidth > 420 ? 20 : screenWidth * 0.05; // Fixed size of 20 for wide screens

    // Get the button text style from the theme and update the font size
    TextStyle? buttonTextStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Colors.white,
      fontSize: fontSize,
    );

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ontap,
      child: Container(
        width: buttonWidth,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Center(
          child: Text(
            btnName,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}

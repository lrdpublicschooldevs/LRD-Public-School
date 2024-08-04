import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget DashboardBox(BuildContext context, VoidCallback onTap, String iconPath, String iconName) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 30, // Fixed width
            height: 30, // Fixed height
          ),
          Text(
            iconName,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center, // Center align the text
          ),
        ],
      ),
    ),
  );
}

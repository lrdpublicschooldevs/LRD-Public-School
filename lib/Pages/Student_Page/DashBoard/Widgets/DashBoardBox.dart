import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget DashboardBox(BuildContext context, VoidCallback onTap, String iconPath, String iconName) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            iconPath,
            width: MediaQuery.of(context).size.width * .08, // Fixed width
            height: MediaQuery.of(context).size.height * .05, // Fixed height
            color: Colors.black,
          ),
          Text(
            iconName,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center, // Center align the text
          ),
        ],
      ),
    ),
  );
}

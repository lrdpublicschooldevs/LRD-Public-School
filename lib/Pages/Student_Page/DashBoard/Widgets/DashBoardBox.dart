import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Widgets/responsiveLayout.dart';

Widget DashboardBox(BuildContext context, VoidCallback onTap, String iconPath, String iconName) {
  final w = Responsive.width(context);
  final h = Responsive.height(context);
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
            width: w * .09, // Fixed width
            height: h * .05, // Fixed height
            color: Colors.black,
          ),
          Text(
            maxLines: 1,
            iconName,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.justify, // Center align the text
          ),
        ],
      ),
    ),
  );
}
